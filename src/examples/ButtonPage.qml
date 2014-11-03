import QtQuick 2.0
import "../buttons"

Item {
    width: parent.width
    height: parent.height
    Column {
        anchors.centerIn: parent
        spacing: 10
        ButtonDefault {
            class_name: "large calm outline"
            text: "Button large cam outline"
        }
        ButtonDefault {
            class_name: "stable large"
            text: "Button large stable"
        }
        ButtonDefault {
            class_name: "small positive"
            text: "Button smal positive"
        }
        ButtonDefault {
            class_name: "calm"
            text: "Button default calm"
        }
        ButtonDefault {
            class_name: "balanced"
            text: "Button default balanced"
        }
        ButtonDefault {
            class_name: "energized"
            text: "Button default energized"
        }
        ButtonDefault {
            class_name: "assertive"
            text: "Button default assertive"
        }
        ButtonDefault {
            class_name: "royal"
            text: "Button default royal"
        }
        ButtonDefault {
            class_name: "dark"
            text: "Button default dark"
        }
    }
}
