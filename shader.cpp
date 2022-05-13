#include "shader.h"
//#include "file.h"

#include <iostream>
#include <fstream>
//#include <string.h>
//#include <glad/glad.h>


//Shader::Shader(const char *vertex_shader_path, const char *fragment_shader_path) {
//	std::cout << "Shader::Shader()" << std::endl;
//
//	File vertex_shader_file(vertex_shader_path);
//	File fragment_shader_file(fragment_shader_path);
//
//	GLuint vertex_shader = glCreateShader(GL_VERTEX_SHADER);
//	GLuint fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
//
//	const char *vertex_shader_source = vertex_shader_file.contents();
//	const char *fragment_shader_source = fragment_shader_file.contents();
//	int vertex_shader_source_length = strlen(vertex_shader_source);
//	int fragment_shader_source_length = strlen(fragment_shader_source);
//	glShaderSource(vertex_shader, 1, &vertex_shader_source, &vertex_shader_source_length);
//	glShaderSource(fragment_shader, 1, &fragment_shader_source, &fragment_shader_source_length);
//
//	int success;
//	char info_log[512];
//	glCompileShader(vertex_shader);
//	glGetShaderiv(vertex_shader, GL_COMPILE_STATUS, &success);
//	if (!success) {
//		glGetShaderInfoLog(vertex_shader, sizeof(info_log), NULL, info_log);
//		std::cout << "vertex shader error:" << info_log << std::endl;
//	}
//	glCompileShader(fragment_shader);
//	glGetShaderiv(fragment_shader, GL_COMPILE_STATUS, &success);
//	if (!success) {
//		glGetShaderInfoLog(fragment_shader, sizeof(info_log), NULL, info_log);
//		std::cout << "fragment shader error:" << info_log << std::endl;
//	}
//
//	GLuint shader_program = glCreateProgram();
//	glAttachShader(shader_program, vertex_shader);
//	glAttachShader(shader_program, fragment_shader);
//	glLinkProgram(shader_program);
//
//	glDeleteShader(vertex_shader);
//	glDeleteShader(fragment_shader);
//
//	this->shader_program = shader_program;
//}

Shader::Shader(const char *shader_file_path)
{
	std::cout << "Shader::Shader()" << std::endl;

	std::string vshader;
	std::string fshader;
	std::ifstream file(shader_file_path);

	if (file.fail()) {
		std::cerr << "Encountered an error while reading the shader file: " << shader_file_path << std::endl;
		return;
	}

	std::string line;
	while (file.good()) {
		getline(file, line);
		if (line.compare("VERTEX SHADER BEGIN") == 0) {
			// read vertex shader
			while (file.good()) {
				getline(file, line);
				if (line.compare("VERTEX SHADER END") == 0) break;
				line.push_back('\n'); // string::push_back() returns void
				vshader.append(line);
			}
			continue;
		}
		if (line.compare("FRAGMENT SHADER BEGIN") == 0) {
			// read fragment shader
			while (file.good()) {
				getline(file, line);
				if (line.compare("FRAGMENT SHADER END") == 0) break;
				line.push_back('\n'); // string::push_back() returns void
				fshader.append(line);
			}
			continue;
		}
	}

	file.close();

	const char *vshader_src = vshader.c_str();
	const char *fshader_src = fshader.c_str();
//	int vshader_src_len = vshader.length();
//	int fshader_src_len = fshader.length();

//	std::cout << "VERTEX SHADER: [" << vshader_src_len << "]" << std::endl;
//	std::cout << vshader_src << std::endl;
//	std::cout << "FRAGMENT SHADER: [" << fshader_src_len << "]" << std::endl;
//	std::cout << fshader_src << std::endl;

	GLuint vertex_shader 	= glCreateShader(GL_VERTEX_SHADER);
	GLuint fragment_shader 	= glCreateShader(GL_FRAGMENT_SHADER);
	glShaderSource(vertex_shader, 1, &vshader_src, NULL);
	glShaderSource(fragment_shader, 1, &fshader_src, NULL);

	int success;
	char info_log[512];

	glCompileShader(vertex_shader);
	glGetShaderiv(vertex_shader, GL_COMPILE_STATUS, &success);
	if (!success) {
		glGetShaderInfoLog(vertex_shader, sizeof(info_log), NULL, info_log);
		std::cerr << "Encountered an error while compiling the vertex shader: " << info_log << std::endl;
	}
	glCompileShader(fragment_shader);
	glGetShaderiv(fragment_shader, GL_COMPILE_STATUS, &success);
	if (!success) {
		glGetShaderInfoLog(fragment_shader, sizeof(info_log), NULL, info_log);
		std::cerr << "Encountered an error while compiling the fragment shader: " << info_log << std::endl;
	}

	GLuint shader_program = glCreateProgram();
	glAttachShader(shader_program, vertex_shader);
	glAttachShader(shader_program, fragment_shader);
	glLinkProgram(shader_program);
	glGetShaderiv(shader_program, GL_LINK_STATUS, &success);
	if (!success) {
		glGetProgramInfoLog(shader_program, sizeof(info_log), NULL, info_log);
		std::cerr << "Encountered an error while linking the shader program: " << info_log << std::endl;
	}

	glDeleteShader(vertex_shader);
	glDeleteShader(fragment_shader);

	_shader_program = shader_program;
}

Shader::~Shader() {
	std::cout << "~Shader()" << std::endl;
	glDeleteProgram(_shader_program);
}

void Shader::use() {
	glUseProgram(_shader_program);
}

void Shader::set_parameter(const char *name, glm::vec4 value) {
	GLint location = glGetUniformLocation(_shader_program, name);
	glUniform4fv(location, 1, glm::value_ptr(value));
}

void Shader::set_parameter(const char *name, glm::mat4 value) {
	GLint location = glGetUniformLocation(_shader_program, name);
	glUniformMatrix4fv(location, 1, GL_FALSE, glm::value_ptr(value));
}