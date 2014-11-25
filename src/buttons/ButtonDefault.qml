import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2
import QtGraphicalEffects 1.0
import "../styles"
import "../variables/buttons.js" as StyleHelper
Button {
    id: root
    property string class_name: "";
    property var type: StyleHelper.parseButtonClass(class_name);
    property string icon: ""
    property bool iconRight: false
    property double fontSize : type.size.font_size
    property double iconSize : type.size.icon_size
    property bool radius: true
    property bool selected: {
        if (checkable) {
            return checked;
        }
        return false
    }

    width: {
        if (StyleHelper.hasClass('block', class_name) || StyleHelper.hasClass('full', class_name))
            return parent.width;
        else
            return implicitWidth + type.size.padding * 2
    }
    height: type.size.height + 5

    style: {
        if (StyleHelper.hasClass('outline', class_name)) {
            return outline;
        }
        if (StyleHelper.hasClass('clear', class_name)) {
            return clear;
        }
        return normal;
    }

    Component {
        id: normal
        TouchStyle {
            style: type.style
            size: type.size
        }
    }

    Component {
        id: clear
        TouchClearStyle {
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
}
