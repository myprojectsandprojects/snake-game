#include <string>


struct File {
	const char *filepath;
	File(const char *filepath);
//	std::string contents();
	const char *contents();
};