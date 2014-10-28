import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0
import "../styles" as Styles
import "../variables/buttons.js" as Vars

Button {
    text: "Button"
    property string class_name: "";
    property var style_btn: Vars.parseClassName(class_name);

    width: implicitWidth + style_btn.size.padding
    height: style_btn.size.height + 5

    style: ButtonStyle {
        background: Item {
            width: control.width
            height: control.height
            Rectangle {
                id: rect
                anchors.fill: parent
                color: control.pressed ? style_btn.style.active_bg :style_btn.style.bg
                border.color: control.pressed ? style_btn.style.active_border : style_btn.style.border
                border.width: Vars.button.border_width
                radius: Vars.button.border_radius
                Rectangle {
                    visible: control.pressed
                    anchors.fill: parent
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: "#26000000" }
                        GradientStop { position: 0.1; color: "transparent" }
                    }
                }
            }
        }
        label: Text {
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: control.text                        
            font.pixelSize: style_btn.size.font_size
            color: style_btn.style.text
        }
    }
}
