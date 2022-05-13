#ifndef grid_h
#define grid_h

#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <vector>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

struct Grid2 {
	int x, y;
	int width, height;
	int num_rows, num_columns;
	int h_step, v_step;
	int cell_width, cell_height;

	Grid2(int x, int y, int width, int height, int num_rows, int num_columns);
//	~Grid2();
	glm::ivec2 get_random_free_cell(std::vector<glm::ivec2> occupied_cells);
};

#endif