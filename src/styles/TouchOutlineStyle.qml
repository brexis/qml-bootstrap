import QtQuick 2.3
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import "../variables/buttons.js" as StyleHelper

ButtonStyle {
    id: root
    property variant style
    property variant size
    background: Rectangle {
        color: control.pressed ? style.bg : "transparent"
        border.color: control.pressed ? style.active_border : style.bg
        border.width: StyleHelper.button_border_width
        radius: StyleHelper.button_border_radius
        Behavior on color {
            ColorAnimation { duration: 20 }
        }       
    }
    label: RowLayout{
        spacing: 10
        anchors.fill: parent
        anchors.leftMargin: root.size.padding
        anchors.rightMargin: root.size.padding
        layoutDirection: control.iconRight ? Qt.RightToLeft : Qt.LeftToRight
        Text {
            visible: control.icon !== ""
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: control.icon
            font.family: "FontAwesome"
            font.pixelSize: root.size.icon_size
            color: control.pressed ? root.style.text : root.style.bg
            Layout.alignment: Qt.AlignVCenter
        }
        Text {
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: control.text
            font.pixelSize: root.size.font_size
            color: control.pressed ? root.style.text : root.style.bg
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter
        }
    }
}
