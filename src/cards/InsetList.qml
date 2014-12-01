import QtQuick 2.0

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
    property Component delegate: cardDelegate
    readonly property  ListView listViewComponent: listView

    Component{
        id: cardDelegate
        CardStyle{}
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

        delegate: root.delegate

        header: root.header === "" ? blank : headerComponent

        Component{
            id: headerComponent
            ListDividerStyle{
                text: root.header
                radius: StyleHelper.card_border_radius
            }
        }
        footer: root.footer === "" ? blank : footerComponent

        Component{
            id: footerComponent
            ListDividerStyle{
                text: root.footer
                radius: StyleHelper.card_border_radius
            }
        }

        Component{
            id: blank
            Item{}
        }
    }
}
