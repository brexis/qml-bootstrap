import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import "src/buttons" as Buttons
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
    Buttons.ButtonDefault{
        width: 100
        height: 50
    }
}
