export xml_hpp := /home/kleber/Documentos/libxml/include
export xml_lib := /home/kleber/Documentos/libxml -l:libxml.a

export cc := g++
export cppflags := -Wall -pedantic -g -I$(xml_hpp)
export ldflags := -L$(xml_lib)

all: libxslt

libxslt: element.o xslt.o
	$(cc) $(cpp_flags) -shared -o libxslt.so element.o xslt.o $(ldflags)
	ar -rcs libxslt.a element.o xslt.o

element.o: src/element.cpp
	$(cc) $(cpp_flags) -c src/element.cpp

xslt.o: src/xslt.cpp
	$(cc) $(cpp_flags) -c src/xslt.cpp

clean:
	rm -f *.o *.so *.a
