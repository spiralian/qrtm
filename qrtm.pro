# -------------------------------------------------
# Project created by QtCreator 2010-04-08T00:36:49
# -------------------------------------------------
QT += network gui widgets
TARGET = qrtm
TEMPLATE = lib
DEFINES += RTMAPI_LIBRARY
CONFIG += link_pkgconfig create_pc create_prl no_install_prl

SOURCES += src/request.cpp \
    src/authentication.cpp \
    src/service.cpp \
    src/listsmodel.cpp \
    src/tasksmodel.cpp \
    src/list.cpp \
    src/task.cpp \
    src/filteredtasksmodel.cpp
HEADERS += src/libqrtm_global.h \
    src/request.h \
    src/rtm.h \
    src/authentication.h \
    src/service.h \
    src/listsmodel.h \
    src/tasksmodel.h \
    src/list.h \
    src/task.h \
    src/filteredtasksmodel.h

win32 { 
    DESTDIR = .\build\win32
    MOC_DIR = .\build\objects
    OBJECTS_DIR = .\build\objects
}
unix { 
isEmpty(PREFIX) {
 PREFIX = /usr/local
}
target.path = $${PREFIX}/lib

QMAKE_PKGCONFIG_NAME = qrtm
QMAKE_PKGCONFIG_DESCRIPTION = Qt Remember The Milk library
QMAKE_PKGCONFIG_LIBDIR = $$target.path
QMAKE_PKGCONFIG_INCDIR = $$target.path
QMAKE_PKGCONFIG_DESTDIR = pkgconfig

headers.path = $${PREFIX}/include/qrtm
headers.files = $$HEADERS

}

INSTALLS += target headers
