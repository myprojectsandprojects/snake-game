#include "grid.h"

Grid2::Grid2(int _x, int _y, int _width, int _height, int _num_rows, int _num_columns) {
	x = _x;
	y = _y;
	width = _width;
	height = _height;
	num_rows = _num_rows;
	num_columns = _num_columns;

	h_step = width / num_columns;
	v_step = height / num_rows;
	cell_width = h_step - 1;
	cell_height = v_step - 1;

	printf("x: %d, y: %d\n", x, y);
	printf("width: %d, height: %d\n", width, height);
	printf("num_rows: %d, num_columns: %d\n", num_rows, num_columns);
	printf("h_step: %d, v_step: %d\n", h_step, v_step);
	printf("cell_width: %d, cell_height: %d\n", cell_width, cell_height);
}
//Grid2::~Grid2() {}

//glm::ivec2 Grid2::get_random_free_cell(std::vector<glm::ivec2> occupied_cells) {
//	glm::ivec2 rand_cell;
//	srand(time(NULL));
//	int num_free_cells = num_rows * num_columns - occupied_cells.size();
//	assert(num_free_cells);
//	int rand_index = rand() % num_free_cells;
////	int rand_index = num_free_cells - 1; // max cell index we can get
////	printf("rand_index: %d\n", rand_index);
//	for (int row = 0; row < num_rows; ++row) {
//		for (int column = 0; column < num_columns; ++column) {
//			bool found = false;
//			for (int i = 0; i < occupied_cells.size(); ++i) {
//				if (occupied_cells[i].x == column && occupied_cells[i].y == row) {
//					found = true;
//					break; // no need to check any further
//				}
//			}
//			if (found) continue; // occupied cell, move on to the next one
//
//			// its a free cell
//			if (rand_index == 0) {
//				rand_cell = glm::ivec2(column, row);
////				printf("rand_cell: x: %f, y: %f\n", rand_cell.x, rand_cell.y);
//				goto RETURN;
//			} else {
//				rand_index -= 1;
//			}
//		}
//	}
//
//	RETURN:
//	return rand_cell;
//}

glm::ivec2 Grid2::get_random_free_cell(std::vector<glm::ivec2> occupied_cells) {
	int num_cells = num_rows * num_columns;

	bool *pcells = new bool[num_cells]; //@ free
	// is this even necessary?
	for (int i = 0; i < num_cells; ++i) {
		pcells[i] = false;
	}
	int num_unoccupied_cells = num_cells;

	for (int i = 0; i < occupied_cells.size(); ++i) {
		int index = occupied_cells[i].y * num_columns + occupied_cells[i].x;
		pcells[index] = true;
		num_unoccupied_cells -= 1;
	}
	
	assert(num_unoccupied_cells && num_columns);
	srand(time(NULL));
	int rand_i = rand() % num_unoccupied_cells;
	for (int i = 0; i < num_cells; ++i) {
		if (pcells[i]) continue; // occupied
		if (rand_i == 0) {
			float x = i % num_columns;
			float y = i / num_columns; // round down?
			return glm::vec2(x, y);
		}
		rand_i -= 1;
	}
	assert(false); // shouldnt get here
}