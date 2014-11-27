import QtQuick 2.0
import QtGraphicalEffects 1.0

import "../styles"
import "../variables/items.js" as StyleHelper

Rectangle {
    id: root
    anchors.top: parent.top;
    anchors.left: parent.left
    anchors.right: parent.right
    height: listView.height + 4 * StyleHelper.card_padding
    color: "transparent"

    property alias model: listView.model
    property string header: ""
    property string footer: ""

    Item{
        id: shadow
        smooth: true
        width: listView.width + 2 * dropShadow.radius
        height: listView.height + 2 * dropShadow.radius
        anchors.centerIn: listView
        visible: false

        Rectangle {
            id: contentRect
            width: listView.width
            height: listView.height
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
    }

    ListView {
        id: listView
        anchors.top: parent.top;
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: 2 * StyleHelper.card_padding
        anchors.leftMargin: StyleHelper.card_padding
        anchors.rightMargin: StyleHelper.card_padding
        height: childrenRect.height

        boundsBehavior : Flickable.StopAtBounds

        delegate: Component{
            CardStyle{}
        }

        header: root.header === "" ? blank : headerComponent

        Component{
            id: headerComponent
            ListDividerStyle{
                text: root.header
            }
        }
        footer: root.footer === "" ? blank : footerComponent

        Component{
            id: footerComponent
            ListDividerStyle{
                text: root.footer
            }
        }

        Component{
            id: blank
            Item{}
        }
    }
}

