export xml_header := /media/kleber/Disco/GitHub/libxml/include
export xml_lib := /media/kleber/Disco/GitHub/libxml
export xml_flags := -Wl,-rpath '/media/kleber/Disco/GitHub/libxml' ${xml_lib}/libxml.so

export xpath_header := ../xpath/include
export xpath_lib := ../xpath
export xpath_flags := -Wl,-rpath '../xpath' ${xpath_lib}/libxpath.so

export xquery_headers := ../xquery/include
export xquery_lib := ../xquery
export xquery_flags := -Wl,-rpath '../xquery' ${xquery_lib}/libxquery.so

export regex_header := ../regex/include
export regex_lib := ../regex
export regex_flags := -Wl,-rpath '../regex' -Wl,-soname,regex.so  ${regex_lib}/regex.so


export cc := g++
export cpp_flags := -Wall -pedantic -fPIC -g -I ${xml_header}

all: libxslt

libxslt: syntaxNode.o syntaxTree.o exprNode.o exprTree.o xslt.o
	$(cc) -shared -o libxslt.so syntaxNode.o syntaxTree.o exprNode.o exprTree.o xslt.o ${xml_flags} ${xpath_flags} ${xquery_flags}

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
