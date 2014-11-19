import QtQuick 2.3
import QtQuick.Layouts 1.1
import QtGraphicalEffects 1.0
import "../lists"
import "../variables/badges.js" as StyleHelper
import "../variables/fontawesome.js" as FontAwesome
import "../content"

Item{
    id: itemRoot
    width: ListView.view.width
    height: row.implicitHeight + StyleHelper.item_padding * 2
    property List root
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
            anchors.margins: StyleHelper.item_padding
            spacing: StyleHelper.item_padding
            Image{
                Layout.preferredWidth: StyleHelper.item_thumbnail_width
                Layout.preferredHeight: StyleHelper.item_thumbnail_height
                source: itemRoot.item.avatar
                smooth: true
            }
            Item{
                Layout.fillHeight: true
                Layout.fillWidth: true

                ColumnLayout{
                    anchors.fill: parent
                    TextContent{
                        text: itemRoot.item.title
                        class_name: "h2"
                        style: StyleHelper.parseItemTextClass(class_name)
                        elide: Text.ElideRight
                        Layout.alignment: Qt.AlignTop
                        Layout.fillWidth: true
                    }
                    TextContent{
                        text: itemRoot.item.detail
                        color: "#666"
                        elide: Text.ElideRight
                        verticalAlignment: Text.AlignTop
                        Layout.alignment: Qt.AlignTop
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                }
            }
        }
    }
    MouseArea{
        id: itemMouse
        anchors.fill: parent
        onClicked: itemRoot.itemClicked(itemRoot.item, model.index)
    }
}
