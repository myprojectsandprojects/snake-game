#include "text-renderer.h"

#include <cstdio>
#include <fstream>

#include <glad/glad.h>

#define STB_TRUETYPE_IMPLEMENTATION
#include "dependencies/stb_truetype.h"

bool read_font_file(const char *file_path, char **file_contents)
{
	std::ifstream f(file_path, std::ifstream::binary);
	if (!f.good()) {
		return false;
	}

	f.seekg(0, f.end);
	int size = f.tellg();
	f.seekg(0, f.beg);
//	std::cout << "font file (" << file_path << ") size: " << size << std::endl;

	*file_contents = new char[size];
	f.read(*file_contents, size);
	
	f.close();
	return true;
}

TextRenderer::TextRenderer(const char *font_file_path, int font_height, int _window_width, int _window_height)
: window_width(_window_width), window_height(_window_height) {
//	printf("TextRenderer()\n");

	_vertices = (FArray *) malloc(sizeof(FArray));
	farray_init(_vertices);

	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	glPixelStorei(GL_UNPACK_ALIGNMENT, 1);

	unsigned char *contents;
	if (!read_font_file(font_file_path, (char **) &contents)) {
		printf("error: read_font_file()\n");
		return;
	}

	_font_info = (stbtt_fontinfo *) malloc(sizeof(stbtt_fontinfo));
	stbtt_InitFont(_font_info, (unsigned char *) contents, 0);
	float scale_factor = stbtt_ScaleForPixelHeight(_font_info, font_height);

	int texture_width = 0;
	int texture_height = 0;
	for (char ch = 32; ch < 127; ++ch) {
		int width, height, xoffset, yoffset;
		unsigned char *bitmap = stbtt_GetCodepointBitmap(
			_font_info, 0, scale_factor, ch, &width, &height, &xoffset, &yoffset);
		int advance, lsb;
		stbtt_GetCodepointHMetrics(_font_info, ch, &advance, &lsb);

		Glyph *pglyph = new Glyph;
		pglyph->bitmap = bitmap;
		pglyph->width = width;
		pglyph->height = height;
		pglyph->y_offset = yoffset;
		pglyph->advance = scale_factor * advance;
		pglyph->lsb = scale_factor * lsb;
		_glyphs[ch] = pglyph;

		texture_width += width;
		texture_height = std::max(texture_height, height);
	}

	GLuint texture_id;
	glGenTextures(1, &texture_id);
	glBindTexture(GL_TEXTURE_2D, texture_id);

	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
//	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
//	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_LINEAR);
//	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR_MIPMAP_NEAREST);
//	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);

//	glTexImage2D(GL_TEXTURE_2D, 0, GL_RED, bitmap_width, bitmap_height, 0, GL_RED, GL_UNSIGNED_BYTE, bitmap);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RED, texture_width, texture_height, 0, GL_RED, GL_UNSIGNED_BYTE, 0);

	_texture = texture_id;

	int x = 0;
	for (char ch = 32; ch < 127; ++ch) {
		glTexSubImage2D(GL_TEXTURE_2D, 0, x, 0,
			_glyphs[ch]->width, _glyphs[ch]->height, GL_RED, GL_UNSIGNED_BYTE, _glyphs[ch]->bitmap);
		_glyphs[ch]->t_x = (float) x / (float) texture_width;
		_glyphs[ch]->t_width = (float) _glyphs[ch]->width / (float) texture_width;
		_glyphs[ch]->t_height = (float) _glyphs[ch]->height / (float) texture_height;
		x += _glyphs[ch]->width;
		stbtt_FreeBitmap(_glyphs[ch]->bitmap, 0);
	}

//	glGenerateMipmap(GL_TEXTURE_2D); // generally, doesnt improve the quality of the scaled-down text
}

// size_factor can be used to scale down text in a smooth way (animation).
// but the text quality leaves alot to be desired.
// I tried mipmaps, but I either dont know how to use them properly
// or the results they produce are generally no better than without.
void TextRenderer::add(const char *text, int x, int baseline, glm::vec4 color, float size_factor) {
	for (const char *p = text; *p; ++p) {
		Glyph *pg = _glyphs[*p];
		float y = (float) baseline - (float) pg->y_offset * size_factor;
		x += (int) ((float) pg->lsb * size_factor);

		// transform from our window_width times window_height coordinate system
		// to OpenGL's coordinate system
		//@ maybe we should do the transform in the shader,
		// then we wouldnt need window_width and window_height as arguments here
		// -- they would be passed to the shader and then it would be more obvious why they are needed
		float _x = ((float) x) * 2.0f / ((float) window_width) - 1.0f;
		float _y = ((float) y) * 2.0f / ((float) window_height) - 1.0f;
		float _width = ((float) pg->width * size_factor) * 2.0f / ((float) window_width);
		float _height = ((float) pg->height * size_factor) * 2.0f / ((float) window_height);


		// flip the texture vertically
		float rect_vertices[] = {
			// upper-left
			_x, _y, 0.0f, pg->t_x, 0.0f, color.r, color.g, color.b, color.a,

			// upper-right
			_x + _width, _y, 0.0f, pg->t_x + pg->t_width, 0.0f, color.r, color.g, color.b, color.a,

			// lower-right
			_x + _width, _y - _height, 0.0f,	pg->t_x + pg->t_width, pg->t_height, color.r, color.g, color.b, color.a,
	
			// lower-right
			_x + _width, _y - _height, 0.0f, pg->t_x + pg->t_width, pg->t_height, color.r, color.g, color.b, color.a,

			// lower-left
			_x, _y - _height, 0.0f, pg->t_x, pg->t_height, color.r, color.g, color.b, color.a,

			// upper-left
			_x, _y, 0.0f, pg->t_x, 0.0f, color.r, color.g, color.b, color.a,
		};

		farray_append(_vertices, rect_vertices, sizeof(rect_vertices) / sizeof(float));

		x += (int) ((float) pg->advance * size_factor);

//		if (text[*(p+1)]) {
//			int kern_advance = stbtt_GetCodepointKernAdvance(&font_info, *p, *(p+1));
//			float scale_factor = stbtt_ScaleForPixelHeight(&font_info, 50);
//			std::cout << "kern_advance: " << kern_advance << std::endl;
//			x += scale_factor * kern_advance;
//		}
	}
}

void TextRenderer::render() {
	unsigned int VAO, VBO;

	glGenVertexArrays(1, &VAO);
	glBindVertexArray(VAO);

	glGenBuffers(1, &VBO);
	glBindBuffer(GL_ARRAY_BUFFER, VBO);
//	glBufferData(GL_ARRAY_BUFFER, vertices.size() * sizeof(float), vertices.data(), GL_STATIC_DRAW);
	glBufferData(GL_ARRAY_BUFFER, _vertices->n_elements * sizeof(float), _vertices->data, GL_STATIC_DRAW);

	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 9 * sizeof(float), (void *) 0); // position
	glEnableVertexAttribArray(1);
	glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 9 * sizeof(float), (void *) (3 * sizeof(float))); // texture
	glEnableVertexAttribArray(2);
	glVertexAttribPointer(2, 4, GL_FLOAT, GL_FALSE, 9 * sizeof(float), (void *) (5 * sizeof(float))); // color

	glBindTexture(GL_TEXTURE_2D, _texture);

//	glDrawArrays(GL_TRIANGLES, 0, vertices.size() / 9);
	int floats_per_vertex = 3 + 2 + 4;
	int total_floats = _vertices->n_elements;
	int total_vertices = total_floats / floats_per_vertex;
	glDrawArrays(GL_TRIANGLES, 0, total_vertices);
	
	glDeleteBuffers(1, &VBO);
	glDeleteVertexArrays(1, &VAO);

	_vertices->n_elements = 0;
}

TextRenderer::~TextRenderer() {
	printf("~TextRenderer()\n");
}