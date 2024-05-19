
//#include <QGuiApplication>
//#include <QQmlApplicationEngine>
//#include <QQmlContext>
//#include "EmployeeModel.h"

//int main(int argc, char *argv[]) {
//    QGuiApplication app(argc, argv);

//    QQmlApplicationEngine engine;

//    EmployeeModel employeeModel;
//    engine.rootContext()->setContextProperty("employeeModel", &employeeModel);

//    const QUrl url(QStringLiteral("qrc:/main.qml"));
//    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
//                     &app, [url](QObject *obj, const QUrl &objUrl) {
//        if (!obj && url == objUrl)
//            QCoreApplication::exit(-1);
//    }, Qt::QueuedConnection);

//    engine.load(url);

//    return app.exec();
//}

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QtQml>
#include "employeemodel.h"
#include "employeefilterproxymodel.h"

int main(int argc, char *argv[])
{

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;


    EmployeeModel employeeModel;

    engine.rootContext()->setContextProperty("employeeModel", &employeeModel);


    EmployeeFilterProxyModel *filterProxyModel = new EmployeeFilterProxyModel() ;
    filterProxyModel->setSourceModel(&employeeModel);

    engine.rootContext()->setContextProperty("filterProxyModelView", filterProxyModel);


    //register EmployeeFilterProxyModel width qml:
       qmlRegisterType<EmployeeFilterProxyModel>("com.yourcompany.models", 1, 0, "EmployeeFilterProxyModel");
       // engine.rootContext()->setContextProperty("EmployeeFilterProxyModel",&filterProxyModel);

       //    QQmlApplicationEngine engine;
       //    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
       //    if (engine.rootObjects().isEmpty())
       //        return -1;

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);

    engine.load(url);

    return app.exec();
}
