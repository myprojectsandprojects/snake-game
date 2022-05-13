#ifndef renderer_h
#define renderer_h

#include "main.h"
#include "array.h"

#include <cstdio>
#include <cstdlib>

#include <glad/glad.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

struct Renderer {
	FArray *vertices;

	Renderer();
	~Renderer();
	void quad(int x, int y, int width, int height, glm::vec4 color);
	void render();
};

#endif