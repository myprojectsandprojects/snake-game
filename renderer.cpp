#include "renderer.h"

Renderer::Renderer() {
	printf("Renderer()\n");
	vertices = (FArray *) malloc(sizeof(FArray));
	farray_init(vertices);
}

Renderer::~Renderer() {
	printf("~Renderer()\n");
}

// x, y, width, height are in "pixel coordinates"
void Renderer::quad(int x, int y, int width, int height, glm::vec4 color) {
	float _x = (float) x;
	float _y = (float) y;
	float _width = width;
	float _height = height;
////	printf("%f, %f, %f, %f\n", _x, _y, _width, _height);
////	transform_pixel_to_opengl(window_width, window_height, &_x, &_y, &_width, &_height);
////	printf("%f, %f, %f, %f\n", _x, _y, _width, _height);
//
//	float quad_vertices[] = {
//		_x, _y, 0.0f, color.r, color.g, color.b, color.a, 						// upper left
//		_x + _width, _y, 0.0f, color.r, color.g, color.b, color.a, 				// upper right
//		_x + _width, _y - _height, 0.0f, color.r, color.g, color.b, color.a, 	// lower right	
//
//		_x + _width, _y - _height, 0.0f, color.r, color.g, color.b, color.a, 	// lower right
//		_x, _y - _height, 0.0f, color.r, color.g, color.b, color.a, 			// lower left
//		_x, _y, 0.0f, color.r, color.g, color.b, color.a, 						// upper left
//	};

	float quad_vertices[] = {
		_x, _y, color.r, color.g, color.b, color.a, 						// upper left
		_x + _width, _y, color.r, color.g, color.b, color.a, 				// upper right
		_x + _width, _y - _height, color.r, color.g, color.b, color.a, 	// lower right	

		_x + _width, _y - _height, color.r, color.g, color.b, color.a, 	// lower right
		_x, _y - _height, color.r, color.g, color.b, color.a, 			// lower left
		_x, _y, color.r, color.g, color.b, color.a, 						// upper left
	};

	farray_append(vertices, quad_vertices, sizeof(quad_vertices) / sizeof(float));
}

void Renderer::render() {
	GLuint vao, vbo;
	glGenVertexArrays(1, &vao);
	glGenBuffers(1, &vbo);

	glBindVertexArray(vao);
	glBindBuffer(GL_ARRAY_BUFFER, vbo);
	glBufferData(GL_ARRAY_BUFFER, vertices->n_elements * sizeof(float), vertices->data, GL_STATIC_DRAW);

	// position
	glEnableVertexAttribArray(0);
//	glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 7 * sizeof(float), (void *) 0);
	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *) 0);

	// color
	glEnableVertexAttribArray(1);
	glVertexAttribPointer(1, 4, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *) (2 * sizeof(float)));

	int num_vertices = vertices->n_elements / 6;
	glDrawArrays(GL_TRIANGLES, 0, num_vertices);

	glDeleteBuffers(1, &vbo);
	glDeleteVertexArrays(1, &vao);
	vertices->n_elements = 0; // clear the used vertices
}