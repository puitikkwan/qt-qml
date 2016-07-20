#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <Qdebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    qDebug() << "HELLO WORLD:QML";
    return app.exec();
}
