import QtQuick 2.0
import "../variables/fontawesome.js" as FontAwesome
ListView {
    model: ListModel{
        ListElement{
            text: "element 1"
        }
    }
    delegate: listViewDelegate
    section.property: "size"
    section.criteria: ViewSection.FullString
    section.delegate: sectionHeading

    Component{
        id: listViewDelegate
        Rectangle{

        }
    }

    Component{
        id: listViewDelegate
        Rectangle{

        }
    }
}

