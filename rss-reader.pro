TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

RESOURCES += \
    resources.qrc

DISTFILES += \
    qml/main.qml \
    qml/MainForm.qml
