

#include "EmployeeModel.h"
#include <QFile>
#include <QTextStream>
#include <QDebug>

EmployeeModel::EmployeeModel(QObject *parent)
    : QAbstractListModel(parent) {
    // Load data from file.txt
    QFile file("D:/Learn -QT-QML/project5/file.txt");
    if (file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qDebug() << "open file";
        QTextStream in(&file);
        while (!in.atEnd()) {
            QString line = in.readLine();
            QStringList fields = line.split(",");
            if (fields.size() == 7) {
                Employee employee;
                employee.id = fields[0].trimmed();
                employee.name = fields[1].trimmed();
                employee.sub1 = fields[2].trimmed().toInt();
                employee.sub2 = fields[3].trimmed().toInt();
                employee.sub3 = fields[4].trimmed().toInt();
                employee.sub4 = fields[5].trimmed().toInt();
                employee.sub5 = fields[6].trimmed().toInt();
                float avg = (employee.sub1 + employee.sub2 + employee.sub3 + employee.sub4 + employee.sub5) / 5.0;
                employee.average = QString::number(avg, 'f', 1).toFloat(); // round to 1 decimal
                addEmployee(employee);
            }
        }
    } else {
        qDebug() << "couldn't open file";
    }
}

void EmployeeModel::addEmployee(const Employee &employee) {
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    m_employees << employee;
    endInsertRows();
}

int EmployeeModel::rowCount(const QModelIndex &parent) const {
    Q_UNUSED(parent);
    return m_employees.count();
}

QVariant EmployeeModel::data(const QModelIndex &index, int role) const {
    if (!index.isValid())
        return QVariant();

    const Employee &employee = m_employees[index.row()];
    switch (role) {
    case IdRole:
        return employee.id;
    case NameRole:
        return employee.name;
    case Sub1Role:
        return employee.sub1;
    case Sub2Role:
        return employee.sub2;
    case Sub3Role:
        return employee.sub3;
    case Sub4Role:
        return employee.sub4;
    case Sub5Role:
        return employee.sub5;
    case AverageRole:
        return employee.average;
    default:
        return QVariant();
    }
}

QHash<int, QByteArray> EmployeeModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[IdRole] = "id";
    roles[NameRole] = "name";
    roles[Sub1Role] = "sub1";
    roles[Sub2Role] = "sub2";
    roles[Sub3Role] = "sub3";
    roles[Sub4Role] = "sub4";
    roles[Sub5Role] = "sub5";
    roles[AverageRole] = "average";
    return roles;
}


void EmployeeModel::updateEmployeeData(const QString &id,const QString &name,const int &sub1,const int &sub2,const int &sub3,const int &sub4,const int &sub5) {


    for (Employee &employee : m_employees) {
        if (employee.id == id) {
            //if(employee.name != name ){
                employee.name = name;
                //qDebug()<<"name change value: "<<name;
            //}
            if(employee.sub1 != sub1 ){
                employee.sub1 = sub1;
                qDebug()<<"sub1 change value: "<<sub1;
            }
            if(employee.sub2 != sub2){
                employee.sub2 = sub2;
                qDebug()<<"sub2 change value: "<<sub2;
            }
            if(employee.sub3 != sub3  ){
                employee.sub3 = sub3;
                qDebug()<<"sub3 change value:"<<sub3;
            }
            if(employee.sub4 != sub4 ){
                employee.sub4 = sub4;
                qDebug()<<"sub4 changevalue:"<<sub4;
            }
            if(employee.sub5 != sub5 ){
                employee.sub5 = sub5;
                qDebug()<<"sub5 change value:"<<sub5;
            }

//                float avg = (sub1 + sub2 + sub3 + sub4 + sub5) / 5.0;
//                employee.average = QString::number(avg, 'f', 1).toFloat();
//                qDebug()<<"average is: "<<employee.average;
                long long int reSub1 = 0;
                long long int reSub2 = 0;
                long long int reSub3 = 0;
                long long int reSub4 = 0;
                long long int reSub5 = 0;
                reSub1 = static_cast<long>(sub1);
                reSub2 = static_cast<long>(sub2);
                reSub3 = static_cast<long>(sub3);
                reSub4 = static_cast<long>(sub4);
                reSub5 = static_cast<long>(sub5);
                long long int sum = 0;
                sum = reSub1 + reSub2 + reSub3 + reSub4 + reSub5;
                float avg = sum / 5.0;
                employee.average = QString::number(avg, 'f', 1).toFloat();
                qDebug()<<"average is: "<<employee.average;


            dataChanged(index(0), index(m_employees.size() - 1));
            return;
        }
    }
}

void EmployeeModel::writeFile(const QString &filePath) {
    QFile file(filePath);
    if (file.open(QIODevice::WriteOnly | QIODevice::Text)) {
        qDebug() << "open file for writing";
        QTextStream out(&file);
        for (const Employee &employee : m_employees) {
            out << employee.id << ","
                << employee.name << ","
                << employee.sub1 << ","
                << employee.sub2 << ","
                << employee.sub3 << ","
                << employee.sub4 << ","
                << employee.sub5 << "\n";
        }
    } else {
        qDebug() << "couldn't open file for writing";
    }
}
