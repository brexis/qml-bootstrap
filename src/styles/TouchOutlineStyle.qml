import QtQuick 2.3
import QtQuick.Controls.Styles 1.2
import QtQuick.Layouts 1.1
import "../variables/buttons.js" as StyleHelper

ButtonStyle {
    id: root
    property variant style
    property variant size
    background: Item {
        clip: true
        Rectangle{
            width: StyleHelper.hasClass('full', control.class_name) ? parent.width + 2 *StyleHelper.button_border_width : parent.width
            height: parent.height
            anchors.centerIn: parent
            color: (control.pressed || control.selected) ? root.style.border : "transparent"
            border.color: style.active_border
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

        Text {
            visible: control.icon !== ""
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: control.icon
            font.family: "FontAwesome"
            font.pixelSize: control.iconSize
            color: (control.pressed || control.selected) ? "#fff" : root.style.border
            Layout.alignment: Qt.AlignVCenter
        }
        Text {
            visible: control.text !== ""
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: control.text
            font.pixelSize: control.fontSize
            color: (control.pressed || control.selected) ? "#fff" : root.style.border
            Layout.alignment: Qt.AlignCenter
        }
    }
}
