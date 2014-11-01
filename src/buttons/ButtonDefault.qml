import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0
import "../styles"
import "../variables/buttons.js" as StyleHelper
Button {
    text: "Button"
    property string class_name: "";
    property var type: StyleHelper.parseButtonClass(class_name);

    width: implicitWidth + type.size.padding
    height: type.size.height + 5

    style: normal

    Component {
        id: normal
        TouchStyle{
            style: type.style
            size: type.size
        }
    }
}
