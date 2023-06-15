#include "xslt.hpp"

XSLT::XSLT() {
    xslt = new XML();
}

XSLT::~XSLT() {
    delete xslt;
}

void XSLT::parse(std::string xslt) {
    //
}

std::string XSLT::transform(XML * xml) {
    std::string resultString;
    //
    return resultString;
}


void XSLT::parseFile(std::string file_path) {
    //
}
