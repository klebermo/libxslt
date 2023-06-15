#include <xml.hpp>

class XSLT {
private:
    XML * xslt;
public:
    XSLT();
    ~XSLT();

    void parse(const char * xslt);
    std::string transform(XML * xml);

    void parseFile(std::string file_path);
};
