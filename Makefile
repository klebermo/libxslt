export cc := g++
export cpp_flags := -Wall -pedantic -fPIC -g

all: libxslt

libxslt: tag.o xslt.o
	$(cc) $(cpp_flags) -shared -o libxslt.so tag.o xslt.o
	ar -rcs libxslt.a tag.o xslt.o

tag.o: src/tag.cpp
	$(cc) $(cpp_flags) -c src/tag.cpp

xslt.o: src/xslt.cpp
	$(cc) $(cpp_flags) -c src/xslt.cpp

clean:
	rm -f *.o *.so *.a
