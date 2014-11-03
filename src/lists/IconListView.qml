import QtQuick 2.3
import "../styles"
List {
    id: rootList
    delegate: listViewDelegate
    Component{
        id: listViewDelegate
        IconListViewStyle{
            onItemClicked: rootList.itemClicked(item, index)
        }
    }
}
