#include "PrettyPrinter.h"

#ifndef B_STYLE_PRETTY_PRINTER_H
#define B_STYLE_PRETTY_PRINTER_H

/* Prints using print-function in module B */
class BStylePrettyPrinter : public PrettyPrinter
{
public:
	void println(std::string message);
};

#endif /* B_STYLE_PRETTY_PRINTER_H */
