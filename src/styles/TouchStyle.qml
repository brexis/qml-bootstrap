import QtQuick 2.3
import QtQuick.Controls.Styles 1.2
import "../variables/buttons.js" as StyleHelper

ButtonStyle {
    id: root
    property variant style
    property variant size
    background: Rectangle {
        color: control.pressed ? style.active_bg :style.bg
        border.color: control.pressed ? style.active_border : style.border
        border.width: StyleHelper.button_border_width
        radius: StyleHelper.button_border_radius
        Rectangle {
            visible: control.pressed
            anchors.fill: parent
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#26000000" }
                GradientStop { position: 0.1; color: "transparent" }
            }
        }
    }
    label: Text {
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: control.text
        font.pixelSize: root.size.font_size
        color: root.style.text
    }
}
