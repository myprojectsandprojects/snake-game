#ifndef text_renderer_h
#define text_renderer_h

#include <glm/glm.hpp>

#include "dependencies/stb_truetype.h"

#include "array.h"

struct Glyph {
	unsigned char *bitmap;
	int width;
	int height;
	int y_offset;
	int advance;
	int lsb;
	float t_x; // y is always 0 for now
	float t_width;
	float t_height;
};

struct TextRenderer {
	stbtt_fontinfo 	*_font_info;
	Glyph 				*_glyphs[256];
	FArray 			*_vertices;
	int 				_texture;
	int window_width, window_height;

	TextRenderer(const char *font_file_path, int font_height, int _window_width, int _window_height);
	void add(const char *text, int x, int baseline, glm::vec4 color, float size_factor = 1.0f);
	void render();
	~TextRenderer();
};

#endif