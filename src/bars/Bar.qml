import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../variables/bars.js" as StyleHelper
import "../content"

Rectangle {
    id: root
    width: parent.width
    property string class_name: "";
    property var style: StyleHelper.parseBarClass(class_name);
    property string title: ""
    height: StyleHelper.bar_height + 2*StyleHelper.bar_padding_portrait
    clip: true

    property Component leftComponent

    property Component contentComponent: Component{
        TextContent{
            class_name: "h1"
            text: root.title
            font.pixelSize: StyleHelper.bar_title_font_size
            color: root.style.text
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
    }

    property Component rightComponent

    Rectangle{
        color: root.style.bg
        anchors.fill: parent
        anchors.topMargin: StyleHelper.hasClass('header', root.class_name) ? -1 : 0
        anchors.leftMargin: -1
        anchors.rightMargin: -1
        anchors.bottomMargin: StyleHelper.hasClass('footer', root.class_name) ? -1 : 0
        border.width: 1
        border.color: root.style.border
    }

    Loader{
        sourceComponent: root.leftComponent
        anchors.left: parent.left
        anchors.leftMargin: StyleHelper.bar_padding_portrait
        anchors.verticalCenter: parent.verticalCenter
    }
    Loader{
        sourceComponent: root.contentComponent
        anchors.fill: parent
        anchors.margins: StyleHelper.bar_padding_portrait
        anchors.verticalCenter: parent.verticalCenter
    }
    Loader{
        sourceComponent: root.rightComponent
        anchors.right: parent.right
        anchors.rightMargin: StyleHelper.bar_padding_portrait
        anchors.verticalCenter: parent.verticalCenter
    }
}
