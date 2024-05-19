//#ifndef EMPLOYEEFILTERPROXYMODEL_H
//#define EMPLOYEEFILTERPROXYMODEL_H


//class EmployeeFilterProxyModel
//{
//public:
//    EmployeeFilterProxyModel();
//};

//#endif // EMPLOYEEFILTERPROXYMODEL_H

#ifndef EMPLOYEEFILTERPROXYMODEL_H
#define EMPLOYEEFILTERPROXYMODEL_H
#include <QSortFilterProxyModel>
#include "employeemodel.h"

class EmployeeFilterProxyModel:public QSortFilterProxyModel
{

    Q_OBJECT;
    Q_PROPERTY(QString fsortString READ sortString WRITE setSortString NOTIFY sortStringChange)

private:
    QString m_sortString;
public:
    EmployeeFilterProxyModel(QObject *parent = nullptr);

    QString sortString ()const;
    Q_INVOKABLE  void setSortString (const QString &sort);

    bool filterAcceptsRow(int sourceRow, const QModelIndex &sourceParent) const override;

    //Q_INVOKABLE void updateEmployeeData(const QString &id, int sub1, int sub2, int sub3, int sub4, int sub5);

    signals:
    void sortStringChange();

};

#endif // EMPLOYEEFILTERPROXYMODEL_H

