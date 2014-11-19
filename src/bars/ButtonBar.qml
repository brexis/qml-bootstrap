import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

import "../buttons"
import "../variables/buttons.js" as StyleHelper

Rectangle {
    id: root
    width: 300
    height: 40
    property string class_name: ""
    property var type: StyleHelper.parseButtonClass(class_name);
    border.color: "#000"
    border.width: 10
    radius: 5

    Row {
        id: row

        ButtonDefault {
            text: "Breakfast"
            width: root.width / 3
            class_name: "full"
            radius: false
        }
        Rectangle{
            width: StyleHelper.button_border_width
            height: parent.height
            color: root.type.style.border
        }
        ButtonDefault {
            text: "Lunch"
            width: root.width / 3
            class_name: "full"
        }
        Rectangle{
            width: 1
            height: parent.height
            color: root.type.style.active_border
        }
        ButtonDefault {
            text: "Dinner"
            width: root.width / 3
            radius: false
            class_name: "full"
        }
    }
}
