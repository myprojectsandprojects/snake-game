#ifndef main_h
#define main_h

#include <cstdio>
#include <vector>

#include <unistd.h>

#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>

#include <glad/glad.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

#include "shader.h"
#include "renderer.h"
#include "text-renderer.h"
#include "grid.h"

void transform_pixel_to_opengl(int window_width, int window_height, float *x, float *y, float *width, float *height);
glm::ivec2 transform_grid_to_pixel(Grid2 & grid, glm::ivec2 coord);

#endif