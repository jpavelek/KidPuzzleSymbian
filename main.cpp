#include <QtGui/QApplication>
#include <QtDeclarative>
#include "qmlapplicationviewer.h"

Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationLockLandscape);
    viewer.setMainQmlFile(QLatin1String("qml/KidPuzzleSymbian/main.qml"));

    QSettings settings("Afte9", "KidPuzzleSymbian");
    if (!settings.contains("muted")) {
        settings.setValue("muted", false);
    }
/*
    bool blahmuted;
    viewer.rootContext()->setContextProperty("isMuted", &blahmuted);
*/
    viewer.showExpanded();

    return app->exec();
}
