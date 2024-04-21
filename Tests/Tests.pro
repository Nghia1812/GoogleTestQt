TEMPLATE = app

QT += testlib

CONFIG += testcase
CONFIG += c++17
CONFIG -= debug_and_release
CONFIG += console

TARGET = Tests

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


#include Library path
INCLUDEPATH += ../TemplateLib  #replace (TemplateLib) with project name lib
LIBS += -L../TemplateLib -lTemplateLib

include(../GoogleTest/GoogleTest.pri)

#Include header files
# HEADERS += ...

#include source files
SOURCES += \
        IntTest.cpp \
        main.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
