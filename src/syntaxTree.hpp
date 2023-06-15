#ifndef syntaxTree_hpp
#define syntaxTree_hpp

#include "syntaxNode.hpp"

class SyntaxTree {
private:
    SyntaxNode* root;
public:
    SyntaxTree();
    ~SyntaxTree();

    void parse(const char * xml);
};

#endif
