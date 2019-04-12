#include "a_print.h"
#include "b_print.h"
#include <iostream>

void module_a::println(std::string message)
{
	std::cout << "[MODULE_A] " << message << std::endl;
}
