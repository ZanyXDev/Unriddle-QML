#include <QtTest>
#include <QCoreApplication>

// add necessary includes here

class TEncrypt : public QObject
{
    Q_OBJECT

public:
    TEncrypt();
    ~TEncrypt();

private slots:
    void initTestCase();
    void cleanupTestCase();
    void test_case1();

};

TEncrypt::TEncrypt()
{

}

TEncrypt::~TEncrypt()
{

}

void TEncrypt::initTestCase()
{

}

void TEncrypt::cleanupTestCase()
{

}

void TEncrypt::test_case1()
{

}

QTEST_MAIN(TEncrypt)

#include "tst_tencrypt.moc"
