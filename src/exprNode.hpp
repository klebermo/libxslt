#ifndef exprNode_hpp
#define exprNode_hpp

class ExprNode {
private:
    ExprNode * left;
    ExprNode * right;
    char * value;
public:
    ExprNode();
    ~ExprNode();

    void setLeft(ExprNode * left);
    void setRight(ExprNode * right);
    void setValue(char * value);

    ExprNode * getLeft();
    ExprNode * getRight();
    char * getValue();
};

#endif
