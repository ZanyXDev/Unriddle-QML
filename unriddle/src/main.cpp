#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDirIterator>
#include <QQuickStyle>

#define MYDEBUG 1

#ifdef MYDEBUG
#include <QDebug>
#endif

int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

#ifdef MYDEBUG
    // debug, print qrc resources
    QDirIterator it(":/", QDirIterator::Subdirectories);
    while (it.hasNext()) {
        qDebug() << it.next();
    }
#endif

    QQuickStyle::setStyle("Material");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/qml/main.qml")));
    if (engine.rootObjects().isEmpty()){
        return -1;
    }

    return app.exec();
}
