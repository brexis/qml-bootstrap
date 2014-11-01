import QtQuick 2.3
import "../variables/items.js" as StyleHelper
Item{
    width: ListView.view.width
    height: 38

    Rectangle{
        anchors.fill: parent
        anchors.margins: - StyleHelper.item_border_width
        color: StyleHelper.item_divider_bg
        border.width: StyleHelper.item_border_width
        border.color: StyleHelper.itemStyles.default.border

        Text{
            text: section
            font.bold: true
            color: StyleHelper.item_divider_color
            font.pixelSize: StyleHelper.item_font_size
            anchors.fill: parent
            anchors.margins: StyleHelper.item_padding
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
    }
}
