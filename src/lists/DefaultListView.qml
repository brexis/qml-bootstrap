import QtQuick 2.3
import "../styles"
List {
    id: rootList
    delegate: Component{
        DefaulListViewStyle{
            onItemClicked: rootList.itemClicked(item, index)
        }
    }
}
