#include "b_print.h"
#include <iostream>

void module_b::println(std::string message)
{
	std::cout << "[MODULE_B] " << message << std::endl;
}