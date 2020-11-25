#include <QQuickView>
#include <QGuiApplication>
#include <QQmlEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQuickView view(QString("qrc:/%2").arg(MAIN_QML));
    if (view.status() == QQuickView::Error){
        return -1;
    }
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.show();
    return app.exec();
}
