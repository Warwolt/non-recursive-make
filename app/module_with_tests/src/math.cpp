#include "math.h"

int math::sum(int a, int b)
{
	return a + b;
}

int math::diff(int a, int b)
{
	return a - b;
}

int math::mul(int a, int b)
{
	return a * b;
}

float math::div(int a, int b)
{
	return static_cast<float>(a)/b;
}
