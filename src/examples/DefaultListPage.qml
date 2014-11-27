import QtQuick 2.0
import "../lists"

Item {
    width: parent.width
    height: parent.height
    DefaultListView{
        id: listView
        hasDivider: true
        anchors.fill: parent
        onItemClicked: {
            listView.model.get(index).text = "Item clicked";
        }

        model: ListModel{
            ListElement{
                text: "Item 1 default"
                divider: "Divider 1"
            }
            ListElement{
                text: "Item 2 light"
                divider: "Divider 1"
                class_name: "light"
            }
            ListElement{
                text: "Item 3 stable"
                divider: "Divider 1"
                class_name: "stable"
            }
            ListElement{
                text: "Item 4 calm"
                divider: "Divider 2"
                class_name: "calm"
            }
            ListElement{
                text: "Item 5 positive"
                divider: "Divider 2"
                class_name: "positive"
            }
            ListElement{
                text: "Item 5 assertive"
                divider: "Divider 2"
                class_name: "assertive"
            }
            ListElement{
                text: "Item 5 balanced"
                divider: "Divider 3"
                class_name: "balanced"
            }
            ListElement{
                text: "Item 5 royal"
                divider: "Divider 3"
                class_name: "royal"
            }
            ListElement{
                text: "Item 5 dark"
                divider: "Divider 3"
                class_name: "dark"
            }
        }

    }
}
