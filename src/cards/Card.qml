import QtQuick 2.0
import QtGraphicalEffects 1.0

import "../styles"
import "../variables/items.js" as StyleHelper

InsetList {
    id: root

    Item{
        id: shadow
        smooth: true
        width: root.listViewComponent.width + 2 * dropShadow.radius
        height: root.listViewComponent.height + 2 * dropShadow.radius
        anchors.centerIn: root.listViewComponent
        visible: false

        Rectangle {
            id: contentRect
            width: root.listViewComponent.width
            height: root.listViewComponent.height
            anchors.centerIn: parent
            antialiasing: true;
        }
    }

    DropShadow {
       id: dropShadow
       anchors.fill: shadow
       horizontalOffset: 2
       verticalOffset: 1
       radius: 4
       samples: 24
       color: "#19000000"
       cached: true
       source: shadow
       z: -10
    }
}
