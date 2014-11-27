import QtQuick 2.3
import "../variables/items.js" as StyleHelper
Item{
    id: root
    width: ListView.view.width
    height: sectionText.implicitHeight + StyleHelper.item_padding
    property string text

    Rectangle{
        anchors.fill: parent
        anchors.margins: - StyleHelper.item_border_width
        color: StyleHelper.item_divider_bg
        border.width: StyleHelper.item_border_width
        border.color: StyleHelper.itemStyles.default.border

        Text{
            id: sectionText
            text: root.text
            font.bold: true
            color: StyleHelper.item_divider_color
            font.pixelSize: StyleHelper.item_font_size
            anchors.fill: parent
            anchors.topMargin: StyleHelper.item_padding / 2
            anchors.leftMargin: StyleHelper.item_padding
            anchors.rightMargin: StyleHelper.item_padding
            anchors.bottomMargin: StyleHelper.item_padding / 2
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
        }
    }
}
