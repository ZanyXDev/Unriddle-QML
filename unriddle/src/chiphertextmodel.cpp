#include "chiphertextmodel.h"

ChipherTextModel::ChipherTextModel()
{

}

void ChipherTextModel::setNewChiperText(QString textData)
{
    if (!textData.isEmpty())
    {
        beginResetModel();
        m_data.clear();
#ifdef QT_DEBUG
        m_data.append( {"A","B",1,2,5} );
        m_data.append( {"C","D",1,4,1} );
        m_data.append( {"E","F",1,6,3} );
#else

#endif
        endResetModel();
    }

}

int ChipherTextModel::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid()){
        return 0;
    }
    return m_data.size();
}

int ChipherTextModel::columnCount(const QModelIndex &) const
{
    return 1;
}

Qt::ItemFlags ChipherTextModel::flags(const QModelIndex &index) const
{
    if (!index.isValid())
    {
        return Qt::ItemIsEnabled;
    }
    return QAbstractListModel::flags(index) | Qt::ItemIsEditable;
}

QVariant ChipherTextModel::data(const QModelIndex &index, int role) const
{
    if (!hasIndex(index.row(), index.column(), index.parent())) {
        return QVariant();
    }
    const ChipherTextItem &item = m_data.at(index.row());
    switch (role) {
    case OpenLetterRole:
        return item.OpenLetter;
    case CloseLetterRole:
        return item.CloseLetter;
    case OpenLetterColorRole:
        return item.OpenLetterColor;
    case CloseLetterIndexRole:
        return item.CloseLetterIndex;
    case CloseLetterCountRole:
        return item.CloseLetterCount;
    default:
        return QVariant();
        break;
    }
    return QVariant();
}

bool ChipherTextModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (!hasIndex(index.row(), index.column(), index.parent()) || !value.isValid()){
        return false;
    }

    ChipherTextItem &item = m_data[index.row()];
    switch (role) {
    case OpenLetterRole:
        item.OpenLetter = value.toString();
        break;
    case CloseLetterRole:
        item.CloseLetter = value.toString();
        break;
    case OpenLetterColorRole:
        item.OpenLetterColor = value.toInt();
        break;
    case CloseLetterIndexRole:
        item.CloseLetterIndex = value.toInt();
        break;
    case CloseLetterCountRole:
        item.CloseLetterCount = value.toInt();
        break;
    default:
        return false;
        break;
    }
    emit dataChanged(index, index, { role } );
    return true ;
}

QHash<int, QByteArray> ChipherTextModel::roleNames() const
{
    return {
        { OpenLetterRole, "OpenLetter" },
        { CloseLetterRole, "CloseLetter" },
        { OpenLetterColorRole, "OpenLetterColor" },
        { CloseLetterIndexRole, "CloseLetterIndex" },
        { CloseLetterCountRole, "CloseLetterCount" }
    };
}

