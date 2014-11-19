import QtQuick 2.3
import QtQuick.Layouts 1.1
import "../variables/badges.js" as StyleHelper
import "../variables/fontawesome.js" as FontAwesome

Item{
    id: itemRoot
    width: ListView.view.width
    height: row.implicitHeight + StyleHelper.item_padding * 2
    property var item: model.modelData ? model.modelData : model
    property var itemStyle: StyleHelper.parseItemClass(item.class_name)
    property var badgeStyle: StyleHelper.parseBadgeClass(item.badge_class_name)
    signal itemClicked (var item, var index);

    Rectangle{
        anchors.fill: parent
        anchors.margins: - StyleHelper.item_border_width
        color: itemMouse.pressed ? itemRoot.itemStyle.active_bg : itemRoot.itemStyle.bg
        border.width: StyleHelper.item_border_width
        border.color: itemMouse.pressed ? itemRoot.itemStyle.active_border : itemRoot.itemStyle.border
        RowLayout{
            id: row
            anchors.fill: parent
            anchors.leftMargin: Math.ceil( (StyleHelper.item_padding / 3) * 2);
            anchors.rightMargin: Math.ceil( (StyleHelper.item_padding / 3) * 2);
            anchors.topMargin: StyleHelper.item_padding
            anchors.bottomMargin: StyleHelper.item_padding
            spacing: StyleHelper.item_padding
            Text{
                visible: (itemRoot.item.leftIcon !== undefined && itemRoot.item.leftIcon !== "")
                font.family: "FontAwesome"
                font.pixelSize: StyleHelper.item_icon_font_size
                text: (itemRoot.item.leftIcon !== undefined ) ? itemRoot.item.leftIcon : ""
                color: itemRoot.itemStyle.text
                Layout.preferredWidth: 32
                Layout.preferredHeight: 32
            }

            Text{
                text: itemRoot.item.text
                color: itemRoot.itemStyle.text
                font.pixelSize: StyleHelper.item_font_size
                Layout.fillWidth: true
                Layout.alignment: Qt.AlignVCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            Text{
                visible: (itemRoot.item.note !== undefined && itemRoot.item.note !== "")
                text: (itemRoot.item.note !== undefined ) ? itemRoot.item.note : ""
                font.pixelSize: 14
                color: "#aaa"
                Layout.alignment: Qt.AlignVCenter
            }
            Rectangle{
                visible: (itemRoot.item.badge !== undefined && itemRoot.item.badge !== "")
                Layout.preferredHeight: badge.height + 2 * 3
                Layout.preferredWidth: badge.width + 2 * 8
                radius: StyleHelper.badge_border_radius
                color: itemRoot.badgeStyle.bg
                Layout.alignment: Qt.AlignVCenter
                Text{
                    id: badge
                    text: (itemRoot.item.badge !== undefined ) ? itemRoot.item.badge : ""
                    color: itemRoot.badgeStyle.text
                    font.weight: StyleHelper.badge_font_weight
                    font.pixelSize: StyleHelper.badge_font_size
                    anchors.centerIn: parent
                }
            }
            Text{
                visible: (itemRoot.item.rightIcon !== undefined && itemRoot.item.rightIcon !== "")
                font.family: "FontAwesome"
                font.pixelSize: StyleHelper.item_icon_font_size
                text: (itemRoot.item.rightIcon !== undefined ) ? itemRoot.item.rightIcon : ""
                color: itemRoot.itemStyle.text
                Layout.preferredWidth: 32
                Layout.preferredHeight: 32
                Layout.alignment: Qt.AlignVCenter
            }
        }
    }
    MouseArea{
        id: itemMouse
        anchors.fill: parent
        onClicked: itemRoot.itemClicked(itemRoot.item, model.index)
    }
}
