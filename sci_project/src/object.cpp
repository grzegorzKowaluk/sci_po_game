#include "object.hpp"

#include <iostream>

namespace sci {

    Object::Object(int value)
        : m_value{ value }
    {
    }

    void Object::display()
    {
        std::cout << __FUNCSIG__ << std::endl
            << m_value << std::endl;
    }

}
