#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickStyle>
#include <QQmlContext>
#include "chiphertextmodel.h"


#ifdef QT_DEBUG
#include <QDebug>
#include <QDirIterator>
#endif

int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);
    ChipherTextModel chipherTextModel;

#ifdef QT_DEBUG
    // debug, print qrc resources
    QDirIterator it(":/", QDirIterator::Subdirectories);
    while (it.hasNext()) {
        qDebug() << it.next();
    }
    chipherTextModel.setNewChiperText ( QString("QWERTY"));
#endif

    QQuickStyle::setStyle("Material");

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("chipherTextModel", &chipherTextModel);
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    if (engine.rootObjects().isEmpty()){
        return -1;
    }

    return app.exec();
}
