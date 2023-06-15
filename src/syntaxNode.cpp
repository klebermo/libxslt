#include "syntaxNode.hpp"

SyntaxNode::SyntaxNode() {
    this->parent = nullptr;
}

SyntaxNode::~SyntaxNode() {
    delete this->parent;
    for (auto child : this->children) {
        delete child;
    }
}

void SyntaxNode::setParent(SyntaxNode* parent) {
    this->parent = parent;
}

void SyntaxNode::addChild(SyntaxNode* child) {
    children.push_back(child);
}

SyntaxNode* SyntaxNode::getParent() {
    return this->parent;
}

std::vector<SyntaxNode*> SyntaxNode::getChildren() {
    return this->children;
}
