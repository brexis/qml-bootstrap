import QtQuick 2.3
import QtQuick.Controls 1.2

import "../buttons"

Item {
    id: root
    width: parent.width
    Row {
        ButtonDefault {
            text: "Breakfast"
            width: root.width / 3
            radius: false
        }
        ButtonDefault {
            text: "Lunch"
            width: root.width / 3
            class_name: "full"
        }
        ButtonDefault {
            text: "Dinner"
            width: root.width / 3
            radius: false
        }
    }
}
