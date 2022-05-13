#ifndef shader_h
#define shader_h

#include <glad/glad.h>

#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

struct Shader {
	GLuint _shader_program;
//	Shader(const char *vertex_shader_path, const char *fragment_shader_path);
	Shader(const char *shader_file_path);
	~Shader();
	void use();
	void set_parameter(const char *name, glm::vec4 value);
	void set_parameter(const char *name, glm::mat4 value);
};

#endif