TEMPLATE = app

CONFIG+=qml_debug

QT += qml \
      quick \
      quickcontrols2

SOURCES += \
    src/chiphertextmodel.cpp \
    src/main.cpp \
    src/quotesreader.cpp

HEADERS += \
    src/chiphertextmodel.h \
    src/quotesreader.h

RESOURCES += \
    resources.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH += $$PWD

# Default rules for deployment.
#include(deployment.pri)

# Setting the application icon
#win32: RC_ICONS = res/icons/2048-qt.ico # On Windows
#macx: ICON = res/icons/2048-qt.ico # On Mac OSX

#HEADERS += \

#TRANSLATIONS = ts/2048-qt_de_DE.ts 


disable-xcb {
    message("The disable-xcb option has been deprecated. Please use disable-desktop instead.")
    CONFIG += disable-desktop
}



