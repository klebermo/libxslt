#ifndef exprTree_hpp
#define exprTree_hpp

#include "exprNode.hpp"

class ExprTree {
private:
    ExprNode * root;
public:
    ExprTree();
    ~ExprTree();

    void parse(const char * expr);
};

#endif
