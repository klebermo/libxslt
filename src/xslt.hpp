#ifndef xslt_hpp
#define xslt_hpp

#include <xml.hpp>

#include "syntaxTree.hpp"
#include "exprTree.hpp"

class XSLT {
private:
    XML * xslt;
public:
    XSLT();
    ~XSLT();

    void parse(std::string xslt);
    std::string transform(XML * xml);
};

#endif
