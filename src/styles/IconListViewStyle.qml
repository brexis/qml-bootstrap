import QtQuick 2.3
import QtQuick.Layouts 1.1
import "../variables/badges.js" as StyleHelper
import "../variables/fontawesome.js" as FontAwesome

Item{
    id: itemRoot
    width: ListView.view.width
    height: 20 + StyleHelper.item_padding * 2
    property var item: model.modelData ? model.modelData : model
    property var itemStyle: StyleHelper.parseItemClass(item.class_name)
    property var badgeStyle: StyleHelper.parseBadgeClass(item.badge_class_name)

    Rectangle{
        anchors.fill: parent
        anchors.margins: - StyleHelper.item_border_width
        color: itemMouse.pressed ? itemRoot.itemStyle.active_bg : itemRoot.itemStyle.bg
        border.width: StyleHelper.item_border_width
        border.color: itemMouse.pressed ? itemRoot.itemStyle.active_border : itemRoot.itemStyle.border
        RowLayout{
            anchors.fill: parent
            anchors.leftMargin: StyleHelper.item_padding
            anchors.rightMargin: StyleHelper.item_padding
            spacing: StyleHelper.item_padding
            Text{
                visible: (itemRoot.item.leftIcon && itemRoot.item.leftIcon !== "")
                font.family: "FontAwesome"
                font.pixelSize: 32
                text: itemRoot.item.leftIcon
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
                visible: (itemRoot.item.note && itemRoot.item.note !== "")
                text: itemRoot.item.note
                color: "#aaa"
                Layout.alignment: Qt.AlignVCenter
            }
            Rectangle{
                visible: (itemRoot.item.badge && itemRoot.item.badge !== "")
                Layout.preferredHeight: 25
                Layout.preferredWidth: 25
                radius: StyleHelper.badge_border_radius
                color: itemRoot.badgeStyle.bg
                Layout.alignment: Qt.AlignVCenter
                Text{
                    text: itemRoot.item.badge
                    color: itemRoot.badgeStyle.text
                    font.bold: true
                    font.pixelSize: StyleHelper.badge_font_size
                    anchors.centerIn: parent
                }
            }
            Text{
                visible: (itemRoot.item.rightIcon && itemRoot.item.rightIcon !== "")
                font.family: "FontAwesome"
                font.pixelSize: 32
                text: itemRoot.item.rightIcon
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
    }
}
