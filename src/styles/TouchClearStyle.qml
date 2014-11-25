import QtQuick 2.3
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import "../variables/bars.js" as StyleHelper

ButtonStyle {
    id: root
    property variant style
    property variant size
    background: Item {
        clip: true
        Rectangle {
            width: StyleHelper.hasClass('full', control.class_name) ? parent.width + 2 *StyleHelper.button_border_width : parent.width
            height: parent.height
            anchors.centerIn: parent
            color: "transparent"
            border.color: "transparent"
            border.width: StyleHelper.button_border_width
            radius: StyleHelper.hasClass('full', control.class_name) ? 0 : StyleHelper.button_border_radius
            smooth: true
        }
    }
    label: RowLayout{
        spacing: 10
        anchors.fill: parent
        anchors.leftMargin: root.size.padding
        anchors.rightMargin: root.size.padding

        layoutDirection: control.iconRight ? Qt.RightToLeft : Qt.LeftToRight
        opacity: (control.pressed || control.selected) ? 0.3 : 1

        Text {
            visible: control.icon !== ""
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: control.icon
            font.family: "FontAwesome"
            font.pixelSize: control.iconSize
            color: root.style.border
            Layout.alignment: Qt.AlignVCenter
        }
        Text {
            visible: control.text !== ""
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: control.text
            font.pixelSize: control.fontSize
            color: root.style.border
            Layout.alignment: Qt.AlignCenter
        }
    }
}
