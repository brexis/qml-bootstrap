import QtQuick 2.3
import "../variables/items.js" as StyleHelper
Item{
    id: itemRoot
    width: ListView.view.width
    height: content.implicitHeight + StyleHelper.item_padding * 2
    property var style: StyleHelper.parseItemClass(model.class_name)

    Rectangle{
        anchors.fill: parent
        anchors.margins: - StyleHelper.item_border_width
        color: itemRoot.style.bg
        border.width: StyleHelper.item_border_width
        border.color: itemRoot.style.border
        radius: StyleHelper.card_border_radius

        Text {
            id: content
            text: model.text
            color: itemRoot.style.text
            font.pixelSize: StyleHelper.item_font_size
            anchors.fill: parent
            anchors.margins: StyleHelper.item_padding
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
        }
    }
}
