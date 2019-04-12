#include <string>

#ifndef PRETTY_PRINTER_H
#define PRETTY_PRINTER_H

/* Prints text to std::out with a prefix depending on the implementing class */
class PrettyPrinter
{
public:
	virtual ~PrettyPrinter() {}
	virtual void println(std::string message) = 0;
};

#endif /* PRETTY_PRINTER_H */
