QT += core testlib

TARGET = tst_getquotes

CONFIG += qt warn_on depend_includepath testcase console
CONFIG += c++11


TEMPLATE = app

HEADERS += \
         $$PWD/../../unriddle/src/quotesreader.h
SOURCES += \
         tst_getquote.cpp \
         $$PWD/../../unriddle/src/quotesreader.cpp

