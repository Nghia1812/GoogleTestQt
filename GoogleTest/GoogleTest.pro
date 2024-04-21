TEMPLATE = lib
CONFIG += static exceptions
CONFIG -= debug_and_release

CONFIG += c++17

TARGET = GoogleTest

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

INCLUDEPATH += \
    googletest/googletest/include \
    googletest/googlemock/include \
    googletest/googletest \
    googletest/googlemock

SOURCES = \
    googletest/googletest/src/gtest-all.cc \
    googletest/googlemock/src/gmock-all.cc




# Default rules for deployment.
unix {
    target.path = $$[QT_INSTALL_PLUGINS]/generic
}
!isEmpty(target.path): INSTALLS += target


