#include "exprNode.hpp"

ExprNode::ExprNode() {
    this->left = nullptr;
    this->right = nullptr;
    this->value = nullptr;
}

ExprNode::~ExprNode() {
    delete this->left;
    delete this->right;
    delete this->value;
}

void ExprNode::setLeft(ExprNode * left) {
    this->left = left;
}

void ExprNode::setRight(ExprNode * right) {
    this->right = right;
}

void ExprNode::setValue(char * value) {
    this->value = value;
}

ExprNode * ExprNode::getLeft() {
    return this->left;
}

ExprNode * ExprNode::getRight() {
    return this->right;
}

char * ExprNode::getValue() {
    return this->value;
}
