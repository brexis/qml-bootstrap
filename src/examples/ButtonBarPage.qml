import QtQuick 2.0
import QtQuick.Layouts 1.1
import "../buttons"
import "../variables/fontawesome.js" as FontAwesome
import "../bars"

Item {
    width: parent.width
    height: parent.height

    Item{
        width: parent.width - 20
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter

        ButtonBar{

        }
    }
}
