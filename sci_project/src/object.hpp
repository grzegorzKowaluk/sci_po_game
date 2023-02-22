// header guard
#ifndef SCI_PROJECT_OBJECT_HPP
#define SCI_PROJECT_OBJECT_HPP

namespace sci {

    class Object
    {
    public:
        Object(int value);

        void display();

    private:
        int m_value;
    };

}

#endif
