#ifndef QUOTESREADER_H
#define QUOTESREADER_H

#include <QObject>

class QuotesReader : public QObject
{
    Q_OBJECT
public:
    explicit QuotesReader(QObject *parent = nullptr);

signals:

};

#endif // QUOTESREADER_H
