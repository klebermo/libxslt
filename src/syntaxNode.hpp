#ifndef syntaxNode_hpp
#define syntaxNode_hpp

#include <vector>

class SyntaxNode {
private:
    SyntaxNode* parent;
    std::vector<SyntaxNode*> children;
public:
    SyntaxNode();
    ~SyntaxNode();

    void setParent(SyntaxNode* parent);
    void addChild(SyntaxNode* child);
    
    SyntaxNode* getParent();
    std::vector<SyntaxNode*> getChildren();
};

#endif
