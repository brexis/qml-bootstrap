import QtQuick 2.0
import QtQuick.Controls.Styles 1.2
import "../variables/buttons.js" as StyleHelper

ButtonStyle {
    id: root
    property variant style
    property variant size
    background: Rectangle {
        color: "transparent"
        border.color: "transparent"
        border.width: StyleHelper.border_width
        radius: StyleHelper.border_radius
        Behavior on color {
            ColorAnimation { duration: 20 }
        }       
    }
    label: Text {
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: control.text
        font.pixelSize: root.size.font_size
        color:  root.style.bg
        opacity: control.pressed ? 0.3:1
    }
}
