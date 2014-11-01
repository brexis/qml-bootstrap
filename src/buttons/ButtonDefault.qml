import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0
import "../styles"
import "../variables/buttons.js" as StyleHelper
Button {
    id: root
    text: "Button"
    property string class_name: "";
    property var type: StyleHelper.parseButtonClass(class_name);

    width: implicitWidth + type.size.padding
    height: type.size.height + 5

    style: normal

    Component {
        id: normal
        TouchStyle {
            style: type.style
            size: type.size
        }
    }

    Component {
        id: outline
        TouchOutlineStyle {
            style: type.style
            size: type.size
        }
    }    

    Component.onCompleted: {
        if (class_name.indexOf('outline') != -1) {
            root.style = outline;
        } else if (class_name.indexOf('clear') != -1) {
            root.style = clear;
        }
    }

}
