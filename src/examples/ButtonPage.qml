import QtQuick 2.0
import "../buttons"
import "../variables/fontawesome.js" as FontAwesome
Item {
    width: parent.width
    height: parent.height
    Column {
        anchors.centerIn: parent
        spacing: 10
        ButtonDefault {
            class_name: "dark outline"
            text: "Back"
            icon: FontAwesome.icons.fa_angle_left
        }
        ButtonDefault {
            class_name: "dark outline"
            text: "Next"
            icon: FontAwesome.icons.fa_angle_right
            iconRight: true
        }
        ButtonDefault {
            class_name: "large calm outline"
            text: "Button large cam outline"
        }
        ButtonDefault {
            class_name: "stable large"
            text: "Button large stable"
            icon: FontAwesome.icons.fa_anchor
        }
        ButtonDefault {
            class_name: "small positive"
            text: "Button smal positive"
            icon: FontAwesome.icons.fa_anchor
        }
        ButtonDefault {
            class_name: "calm"
            text: "Button default calm"
            icon: FontAwesome.icons.fa_anchor
        }
        ButtonDefault {
            class_name: "balanced"
            text: "Button default balanced"
            icon: FontAwesome.icons.fa_anchor
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
