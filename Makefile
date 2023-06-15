export xml_header := ../libxml/include
export xml_lib := ../libxml
export xml_flags := -Wl,-rpath '../libxml' ${xml_lib}/libxml.so

export regex_header := ../regex/include
export regex_lib := ../regex
export regex_flags := -Wl,-rpath '../regex' -Wl,-soname,regex.so  ${regex_lib}/regex.so


export cc := g++
export cpp_flags := -Wall -pedantic -fPIC -g -I ${xml_header}

all: libxslt

libxslt: syntaxNode.o syntaxTree.o exprNode.o exprTree.o xslt.o
	$(cc) -shared -o libxslt.so syntaxNode.o syntaxTree.o exprNode.o exprTree.o xslt.o ${xml_flags} ${regex_flags}

xslt.o: src/xslt.cpp
	$(cc) $(cpp_flags) -c src/xslt.cpp -o xslt.o

syntaxNode.o: src/syntaxNode.cpp
	$(cc) $(cpp_flags) -c src/syntaxNode.cpp -o syntaxNode.o

syntaxTree.o: src/syntaxTree.cpp
	$(cc) $(cpp_flags) -c src/syntaxTree.cpp -o syntaxTree.o

exprNode.o: src/exprNode.cpp
	$(cc) $(cpp_flags) -c src/exprNode.cpp -o exprNode.o

exprTree.o: src/exprTree.cpp
	$(cc) $(cpp_flags) -c src/exprTree.cpp -o exprTree.o

clean:
	rm -f *.o *.so
