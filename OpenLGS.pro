#-------------------------------------------------
#
# Project created by QtCreator 2016-12-23T18:11:54
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = OpenLGS
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += main.cpp \
    mainwindow.cpp \
    matimageprocessor.cpp \
    camera.cpp

HEADERS  += \
    mainwindow.h \
    matimageprocessor.h \
    camera.h

win32 {
    INCLUDEPATH += D:\Development\libs\OpenCV\opencv320\build\include \
                   "C:\Program Files (x86)\Windows Kits\10\Include\10.0.10240.0\um"
}
win32::LIBS += -L"D:\Development\libs\OpenCV\opencv320\build\x64\vc14\bin" -lopencv_world320 \
            "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.10240.0\ucrt\x86\ucrt.lib" \
            "C:\Program Files (x86)\Windows Kits\10\Lib\10.0.10240.0\ucrt\x86\ucrtd.lib"

unix::LIBS += -L/usr/local/lib -lopencv_core \
            -L/usr/local/lib -lopencv_features2d \
            -L/usr/local/lib -lopencv_imgproc \
            -L/usr/local/lib -lopencv_videoio \
            -L/usr/local/lib -lopencv_highgui \
            -L/usr/local/lib -lopencv_calib3d

FORMS += \
    mainwindow.ui
