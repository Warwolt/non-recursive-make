#include "AStylePrettyPrinter.h"
#include "BStylePrettyPrinter.h"
#include "math.h"

int main(int argc, char const *argv[])
{
	AStylePrettyPrinter pa;
	BStylePrettyPrinter pb;

	pa.println("Hello world!");
	pb.println("This makefile is great!");

	return 0;
}
