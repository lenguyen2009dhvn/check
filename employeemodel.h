//#ifndef EMPLOYEEMODEL_H
//#define EMPLOYEEMODEL_H


//class EmployeeModel
//{
//public:
//    EmployeeModel();
//};

//#endif // EMPLOYEEMODEL_H

//#ifndef EMPLOYEEMODEL_H
//#define EMPLOYEEMODEL_H

//#include <QAbstractListModel>
//#include <QStringList>

//struct Employee {
//    int id;
//    QString name;
//    int sub1;
//    int sub2;
//    int sub3;
//    int sub4;
//    int sub5;
//    int average;
//};

//class EmployeeModel : public QAbstractListModel {
//    Q_OBJECT

//public:
//    enum EmployeeRoles {
//        NameRole = Qt::UserRole + 1,
//        AverageRole
//    };

//    EmployeeModel(QObject *parent = nullptr);

//    void addEmployee(const Employee &employee);

//    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
//    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

//protected:
//    QHash<int, QByteArray> roleNames() const override;

//private:
//    QList<Employee> m_employees;
//};

//#endif // EMPLOYEEMODEL_H

#ifndef EMPLOYEEMODEL_H
#define EMPLOYEEMODEL_H

#include <QAbstractListModel>
#include <QStringList>

struct Employee {
    QString id;
    QString name;
    int sub1;
    int sub2;
    int sub3;
    int sub4;
    int sub5;
    float average;
};

class EmployeeModel : public QAbstractListModel {
    Q_OBJECT

public:
    enum EmployeeRoles {
        IdRole = Qt::UserRole + 1,
        NameRole,
        Sub1Role,
        Sub2Role,
        Sub3Role,
        Sub4Role,
        Sub5Role,
        AverageRole
    };

    EmployeeModel(QObject *parent = nullptr);

    void addEmployee(const Employee &employee);

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;

    Q_INVOKABLE void updateEmployeeData(const QString &id,const QString &name,const int &sub1,const int &sub2,const int &sub3,const int &sub4,const int &sub5);
    Q_INVOKABLE void writeFile(const QString &filePath);

protected:
    QHash<int, QByteArray> roleNames() const override;

private:
    QList<Employee> m_employees;
};

#endif // EMPLOYEEMODEL_H


