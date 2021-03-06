#pragma once

#include <QAbstractListModel>
#include <QList>

struct ChipherTextItem
{
    QString OpenLetter;
    QString CloseLetter;

    int OpenLetterColor;
    int CloseLetterIndex;
    int CloseLetterCount;
};

class ChipherTextModel : public QAbstractListModel
{
    Q_OBJECT
public:
    enum Roles
    {
        OpenLetterRole = Qt::UserRole,
        CloseLetterRole,
        OpenLetterColorRole,
        CloseLetterIndexRole,
        CloseLetterCountRole
    };
    Q_ENUM(Roles)

    ChipherTextModel();

    // QAbstractItemModel interface
public:
    void setNewChiperText(QString textData); //Setup new data, update model.
    int rowCount(const QModelIndex &parent) const override;
    int columnCount(const QModelIndex &/*parent*/ = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role) const override;
    bool setData(const QModelIndex &index, const QVariant &value, int role) override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    QHash<int,QByteArray> roleNames() const override;

private:
    QVector<ChipherTextItem> m_data;
};

