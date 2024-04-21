TEMPLATE = lib
CONFIG += c++17
CONFIG -= debug_and_release

TARGET = TemplateLib #replace TEMPLATELIB with project lib name

DEFINES += TEMPLATELIB_LIBRARY #replace TEMPLATELIB with project lib name


# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

#add more source and header files for unit testing
SOURCES += \
    templatelib.cpp

HEADERS += \
    TemplateLib_global.h \
    templatelib.h

# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
