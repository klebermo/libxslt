export cc := g++
export cpp_flags := -Wall -pedantic -fPIC -g

all: libxslt

libxslt: element.o xslt.o
	$(cc) $(cpp_flags) -shared -o libxslt.so element.o xslt.o
	ar -rcs libxslt.a element.o xslt.o

element.o: src/element.cpp
	$(cc) $(cpp_flags) -c src/element.cpp

xslt.o: src/xslt.cpp
	$(cc) $(cpp_flags) -c src/xslt.cpp

clean:
	rm -f *.o *.so *.a
