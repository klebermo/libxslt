#include "syntaxTree.hpp"

SyntaxTree::SyntaxTree() {
    this->root = nullptr;
}

SyntaxTree::~SyntaxTree() {
    delete this->root;
}

void SyntaxTree::parse(const char * xml) {
    //
}
