import QtQuick 2.3
import "../styles"
List {
    id: rootList
    delegate: listViewDelegate
    Component{
        id: listViewDelegate
        DefaulListViewStyle{
            onItemClicked: rootList.itemClicked(item, index)
        }
    }
}
