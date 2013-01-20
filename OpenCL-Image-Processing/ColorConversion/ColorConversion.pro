TEMPLATE = app
CONFIG += console
CONFIG -= qt

SOURCES += main.cpp

HEADERS += \
    ocl_common.h

OTHER_FILES += \
    program1.cl

INCLUDEPATH += /usr/local/include
LIBS +=-L/opt/AMDAPP/lib/x86_64 -lOpenCL

INCLUDEPATH += /usr/local/include /usr/local/include/opencv /usr/local/include/opencv2 ../processing_library
LIBS += -L/usr/local/lib `pkg-config --libs opencv` -lrt -lm
