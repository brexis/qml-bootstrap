import QtQuick 2.3
import QtQuick.Layouts 1.1
import "../styles"
import "../content"
import "../variables/items.js" as StyleHelper
List {
    id: rootList
    delegate: Component{
        ThumbnailListViewStyle{
            root: rootList
            onItemClicked: rootList.itemClicked(item, index)
        }
    }
}
