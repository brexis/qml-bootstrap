import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0
import "../styles" as Styles
import "../variables/buttons.js" as Vars

Button {
    text: "Button"
    property string className: "";
    property var styleBtn: Vars.parseClassName(className);

    implicitWidth: (Vars.button.padding * 3) + Vars.button.font_size
    implicitHeight: Vars.button.height + 5
    style: ButtonStyle {
        background: Item {
            width: control.width
            height: control.height
            Rectangle {
                id: rect
                anchors.fill: parent
                color: control.pressed ? styleBtn.style.active_bg :styleBtn.style.bg
                border.color: control.pressed ? styleBtn.style.active_border : styleBtn.style.border
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
            width: control.width
            height: control.height
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: control.text
            font.pixelSize: 0
            //lineHeight: Vars.button.height - Vars.button.border_width + 1
            color: styleBtn.style.text
        }
    }
}
