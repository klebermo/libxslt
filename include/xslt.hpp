#include <xml.hpp>

class ExprNode {
    //
};

class ExprTree {
    //
};

class SyntaxNode {
    //
};

class SyntaxTree {
    //
};

class XSLT {
private:
    XML * xslt;
public:
    XSLT();
    ~XSLT();

    void parse(const char * xslt);
    std::string transform(XML * xml);
};
