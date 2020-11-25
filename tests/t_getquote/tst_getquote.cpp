#include <QtTest>
#include <QCoreApplication>

// add necessary includes here
#include  "../../unriddle/src/quotesreader.h"

class TGetQuote : public QObject
{
    Q_OBJECT

public:
    TGetQuote();
    ~TGetQuote();

private slots:
    void test_init();

};

TGetQuote::TGetQuote()
{

}

TGetQuote::~TGetQuote()
{

}

void TGetQuote::test_init()
{

}



QTEST_MAIN(TGetQuote)

#include "tst_getquote.moc"
