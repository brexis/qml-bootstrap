TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp

RESOURCES += qml.qrc
OTHER_FILES += \
		main.qml \
		src/variables/base.js \
		src/variables/buttons.js \
		src/variables/colors.js \
		src/variables/fontawesome.js \
		src/styles/TouchStyle.qml \
		src/buttons/ButtonDefault.qml \


# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =
QMAKE_MAC_SDK = macosx10.9
# Default rules for deployment.
include(deployment.pri)
