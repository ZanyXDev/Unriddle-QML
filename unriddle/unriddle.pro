TEMPLATE = app

VERSION = 0.0.1

DEFINES += APP_VERSION=\\\"$${VERSION}\\\"

DEFINES += MAIN_QML=\\\"qml/main.qml\\\"

QT += qml quick

CONFIG += link_pkgconfig

static {
    QT += svg
    QTPLUGIN += qtvirtualkeyboardplugin
}

SOURCES += \
    src/main.cpp \
    src/quotesreader.cpp


RESOURCES += \
    resources.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

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

HEADERS += \
    src/quotesreader.h




