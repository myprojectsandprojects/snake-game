#include "main.h"

int window_width 	= 600;
int window_height 	= 600;

struct Snake {
	int initial_length;
	std::vector<glm::ivec2> positions;
	glm::ivec2 velocity;

	Snake(int _initial_length);
	bool move(glm::ivec2 food_position);
	bool check_for_collisions_with_tail_and_walls(Grid2 & grid);
	void respawn();
};

Snake::Snake(int _initial_length) {
	initial_length = _initial_length;
	respawn();
}

void Snake::respawn() {
//	for (int i = 0; i < positions.size(); ++i) {
//		positions[i];
//		generator.set_unoccupied();
//	}
	positions.clear();
	for (int i = 0; i < initial_length; ++i) {
		float x = (float) i;
		float y = 0.0f;
		positions.insert(positions.begin(), glm::vec2(x, y));
	}

	velocity.x = 1.0f;
	velocity.y = 0.0f;
}

bool Snake::move(glm::ivec2 food_position) {
	bool grew = false;
	glm::vec2 new_head_position;

	new_head_position = glm::vec2(positions[0].x, positions[0].y);
	new_head_position.x += velocity.x;
	new_head_position.y += velocity.y;

	// check for collision with food
	if (new_head_position.x == (float) food_position.x && new_head_position.y == (float) food_position.y) {
		grew = true;
	}

	// update snake
	positions.insert(positions.begin(), new_head_position);
	if (!grew) {
		// remove last element
		positions.pop_back();
	}

	return grew;
}

bool Snake::check_for_collisions_with_tail_and_walls(Grid2 & grid) {
	bool collision;

	collision = false;

	// check for collision with the tail
	for (int i = 1; i < positions.size(); ++i) {
		if (positions[0].x == positions[i].x && positions[0].y == positions[i].y)
			collision = true;
	}

	// check for collisions with walls
	if (positions[0].x < 0 || positions[0].x == grid.num_columns || positions[0].y < 0 || positions[0].y == grid.num_rows)
		collision = true;

	return collision;
}

int main()
{
	GLFWwindow *window;

	if (!glfwInit()) {
		printf("error: glfwInit()\n");
		return -1;
	}

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	window = glfwCreateWindow(window_width, window_height, "Snake Game", NULL, NULL);
	if (!window) {
		printf("error: glfwCreateWindow()\n");
//		glfwTerminate();
		return -1;
	}

	glfwMakeContextCurrent(window);

//	glfwSwapInterval(0); // vsync off

	gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

	glm::vec4 RED = glm::vec4(1.0f, 0.0f, 0.0f, 1.0f);
	glm::vec4 GREEN = glm::vec4(0.0f, 1.0f, 0.0f, 1.0f);
	glm::vec4 BLUE = glm::vec4(0.0f, 0.0f, 1.0f, 1.0f);

	glm::vec4 GAME_BACKGROUND_COLOR 	= glm::vec4(0.0f, 0.3f, 0.0f, 1.0f);
	glm::vec4 FOOD_COLOR 				= glm::vec4(0.0f, 0.6f, 0.0f, 1.0f);
	glm::vec4 SNAKE_COLOR 				= glm::vec4(0.0f, 0.9f, 0.0f, 1.0f);

	Renderer renderer; // quad renderer
	Shader quad_shader("shaders/quad-shader");

	int font_height = 50;
	const char *font_file = "/usr/share/fonts/truetype/ubuntu-font-family/Ubuntu-B.ttf";
	TextRenderer text(font_file, font_height, window_width, window_height);
	Shader text_shader("shaders/text-shader");

	double wait_until_update = 0.05;
//	double wait_until_update = 0.4;

	double t_old; // for 1st frame d is random
	double t_since_last_updated = 0.0;

	long unsigned int count = 0;
	double avg_duration;

	const int snake_length = 3;
	const int num_rows = 20;
	const int num_columns = 20;

//	Grid grid(32, 32);
//	Grid grid(num_rows, num_columns);
	Grid2 grid2(
		30, window_height - 120,	// x, y
		400, 400, 						// width, height
		30, 30								// # of rows, # of columns
	);
	Snake snake(snake_length);
//	Food *pfood = new Food(grid, snake);

//	glm::vec2 rand_cell = grid.get_random_free_cell(snake.positions);
//	Food *pfood = new Food(rand_cell);
	glm::ivec2 food_position = grid2.get_random_free_cell(snake.positions); //@ by value, by reference, by pointer, delete/deallocation?

	int score = 0;
	const int counter_initial = 16;
	int counter = counter_initial;

	const float animation_duration = 1.0f;
	const float size_factor_initial = 1.0f;
	const float size_factor_final = 0.3f;
	float size_factor = size_factor_initial;

	while (!glfwWindowShouldClose(window)) {
		// 16 ms per frame = 1000 / 16 = 62.5 frames per second
		double t_new = glfwGetTime();
		double d = t_new - t_old;
//		std::cout << d * 1000 << " ms" << std::endl;
//		char *title = (char *) malloc(100);
//		snprintf(title, 100, "%f ms", d * 1000);
//		std::cout << title << std::endl;
////		glfwSetWindowTitle(window, title); // this crashes the whole computer if framerate is very high?
//		free(title);
		t_old = t_new;
		t_since_last_updated += d;

		double t_frame_start = glfwGetTime();

		// process input
		if ((glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) && !snake.velocity.y) {
			snake.velocity.x = 0.0f;
			snake.velocity.y = -1.0f;
		} else if ((glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) && !snake.velocity.y) {
			snake.velocity.x = 0.0f;
			snake.velocity.y = 1.0f;
		} else if ((glfwGetKey(window, GLFW_KEY_RIGHT) == GLFW_PRESS) && !snake.velocity.x) {
			snake.velocity.x = 1.0f;
			snake.velocity.y = 0.0f;
		} else if ((glfwGetKey(window, GLFW_KEY_LEFT) == GLFW_PRESS) && !snake.velocity.x) {
			snake.velocity.x = -1.0f;
			snake.velocity.y = 0.0f;
		}

		// update the animation
		{
			//	d = new_t - old_t
			//	value += (final - initial) * (d / total_duration)
			if (size_factor != size_factor_final) {
				size_factor += (size_factor_final - size_factor_initial) * (d / animation_duration);
				if (size_factor < size_factor_final) {
					size_factor = size_factor_final;
				}
			}
		}

		// game tick
		if (t_since_last_updated > wait_until_update) {
			t_since_last_updated = 0.0;

			bool ate_and_grew = snake.move(food_position);
			if (ate_and_grew) {
				// generate new food
				food_position = grid2.get_random_free_cell(snake.positions);

				// update score & reset counter
				score += counter;
				counter = counter_initial;
				size_factor = size_factor_initial;
			} else if (snake.check_for_collisions_with_tail_and_walls(grid2)) {
				snake.respawn();
				// generate new food
				food_position = grid2.get_random_free_cell(snake.positions);

				score = 0;
				counter = counter_initial;
				size_factor = 1.0f;
			} else if (counter > 1) {
				counter -= 1;
			}
		}

		glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
		glClear(GL_COLOR_BUFFER_BIT);

		// create vertices for background-grid
		{
			glm::vec4 color = GAME_BACKGROUND_COLOR;

			for (int i = 0; i < grid2.num_rows; ++i) {
				for (int j = 0; j < grid2.num_columns; ++j) {
					renderer.quad(j * grid2.h_step + grid2.x, grid2.y - i * grid2.v_step, grid2.cell_width, grid2.cell_height, color);
				}
			}
		}

		// create vertices for snake
		{
			for (int i = 0; i < snake.positions.size(); ++i) {
				glm::ivec2 _position = transform_grid_to_pixel(grid2, snake.positions[i]);
				renderer.quad(_position.x, _position.y, grid2.cell_width, grid2.cell_height, SNAKE_COLOR);
			}
		}

		// create vertices for food
		{
		glm::ivec2 _food_position = transform_grid_to_pixel(grid2, food_position);
//			printf("food_x: %d, food_y: %d\n", food_x, food_y);
			renderer.quad(_food_position.x, _food_position.y, grid2.cell_width, grid2.cell_height, FOOD_COLOR);
		}

		// render quads
		{
			float scale_x = 2.0f / (float) window_width;
			float scale_y = 2.0f / (float) window_height;
			glm::mat4 transform = glm::mat4(1.0f);
			transform = glm::translate(transform, glm::vec3(-1.0f, -1.0f, 0.0f));
			transform = glm::scale(transform, glm::vec3(scale_x, scale_y, 1.0f));
			quad_shader.use();
			quad_shader.set_parameter("transform", transform);
			renderer.render();
		}

		// render score & counter
		{
			char score_text[256]; // 2 power? no glue why
			snprintf(score_text, sizeof(score_text), "%d", score);
			text.add(score_text, 30, window_height - 50, glm::vec4(1.0f, 1.0f, 1.0f, 1.0f));

			char counter_text[256]; // 2 power? no glue why
			snprintf(counter_text, sizeof(counter_text), "+%d", counter);
			text.add(counter_text, 30, window_height - 100,
				glm::vec4(1.0f, 1.0f / counter, 1.0f / counter, 1.0f), size_factor);
//			text.add("0123456789", 30, window_height - 100,
//				glm::vec4(1.0f, 1.0f / counter, 1.0f / counter, 1.0f), 0.3f);

			text_shader.use();
			text.render();
		}

//		if (counter > 1) {
//			float d = (size_factor - 0.3) / 50.0f;
//			size_factor -= d;
//		}

		glfwSwapBuffers(window);
		glfwPollEvents();

//		double target = 0.016f; // target framerate (in seconds) (really, how long we want to spend rendering each frame)
		double target = 0.033f; // target framerate (in seconds) (really, how long we want to spend rendering each frame)
		double t = glfwGetTime();
		double diff = (target - (t - t_new));
		if (diff > 0.0) {
//			std::cout << "diff: " << diff << std::endl;
			unsigned int micro_secs = diff * 1000000;
//			std::cout << "diff (micro seconds): " << micro_secs << std::endl;
			usleep(micro_secs);
		}

		double t_duration = glfwGetTime() - t_frame_start;

		count += 1;
//		std::cout << "frame count: " << count << std::endl;
		if (count == 1) {
			avg_duration = t_duration;
		} else {
			avg_duration = (avg_duration * ((double)count - 1) + t_duration) / (double)count;
		}
		printf("[%lu] avg_duration: %f (ms)\n", count, avg_duration * 1000);
//		std::cout << "[" << count << "] avg_duration: " << avg_duration * 1000 << " ms";
//		std::cout << " (t_duration: " << t_duration * 1000 << " ms)";
//		std::cout << std::endl;
//		if (count > 3000) {
//			std::cout << "FINAL AVERAGE DURATION: " << avg_duration * 1000 << " ms" << std::endl;
//			break;
//		}
	}

//	glfwTerminate();
	return 0;
}

//void transform_pixel_to_opengl(int window_width, int window_height, float *x, float *y, float *width, float *height) {
//	float scale_x = 2.0f / (float) window_width;
//	float scale_y = 2.0f / (float) window_height;
//	*x = *x * scale_x;
//	*y = *y * scale_y;
//	*width = *width * scale_x;
//	*height = *height * scale_y;
//	*x -= 1;
//	*y -= 1;
//}

//@ what are we suppouse to pass in as a parameter? grid by value / by reference / by pointer?
glm::ivec2 transform_grid_to_pixel(Grid2 & grid, glm::ivec2 coord) {
	return glm::ivec2(
		grid.x + coord.x * grid.h_step,
		grid.y - coord.y * grid.v_step
	);
}