//#include "employeefilterproxymodel.h"

//EmployeeFilterProxyModel::EmployeeFilterProxyModel()
//{

//}

#include "employeefilterproxymodel.h"
#include "employeemodel.h"
#include<QDebug>

EmployeeFilterProxyModel::EmployeeFilterProxyModel(QObject *parent):QSortFilterProxyModel(parent){};

QString EmployeeFilterProxyModel::sortString ()const{
    return m_sortString;
};

void EmployeeFilterProxyModel::setSortString (const QString &sort){
    if(m_sortString != sort){
        m_sortString = sort;
        //model sort:
        invalidateFilter();
        //emit signal:SS
        emit sortStringChange();
    }
};

bool EmployeeFilterProxyModel::filterAcceptsRow(int sourceRow, const QModelIndex &sourceParent) const{
    QModelIndex index = sourceModel()->index(sourceRow, 0, sourceParent);
    QString name = sourceModel()->data(index, EmployeeModel::NameRole).toString();
    return name.startsWith(m_sortString, Qt::CaseInsensitive);

};
