#include "file.h"

#include <fstream>
#include <sstream>
#include <iostream>

#include <string.h>

File::File(const char *filepath) {
	this->filepath = filepath;
}
/*
std::string File::contents() {
	std::stringstream s;
	std::ifstream file(this->filepath);
	if (file.fail()) {
		std::cout << "failed to open file: " << this->filepath << std::endl;
		return NULL;
	}
	s << file.rdbuf(); // filebuf *
	return s.str();
}
*/
const char *File::contents() {
	std::stringstream s;
	std::ifstream file(this->filepath);
	if (file.fail()) {
		std::cout << "failed to open file: " << this->filepath << std::endl;
		return NULL;
	}
	s << file.rdbuf(); // filebuf *
	std::string contents = s.str();
	return strdup(contents.c_str());
}