#include "PrettyPrinter.h"

#ifndef A_STYLE_PRETTY_PRINTER_H
#define A_STYLE_PRETTY_PRINTER_H

/* Prints using print-function in module A */
class AStylePrettyPrinter : public PrettyPrinter
{
public:
	void println(std::string message);
};

#endif /* A_STYLE_PRETTY_PRINTER_H */
