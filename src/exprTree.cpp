#include "exprTree.hpp"

ExprTree::ExprTree() {
    this->root = nullptr;
}

ExprTree::~ExprTree() {
    delete this->root;
}

void ExprTree::parse(const char * expr) {
    //
}
