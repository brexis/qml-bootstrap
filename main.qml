import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import "src/buttons"

Window {
    visible: true
    width: 640
    height: 640
    title: qsTr("Hello World !")

    Column {
        anchors.centerIn: parent
        spacing: 10
        ButtonDefault {
            class_name: "large calm"
            text: "Un très joli bouton"
        }
        ButtonDefault {
            class_name: "stable large"
        }
        ButtonDefault {
            class_name: "positive"
        }
        ButtonDefault {
            class_name: "calm"
        }
        ButtonDefault {
            class_name: "balanced"
        }
        ButtonDefault {
            class_name: "energized"
        }
        ButtonDefault {
            class_name: "assertive"
        }
        ButtonDefault {
            class_name: "royal"
        }
        ButtonDefault {
            class_name: "dark"
        }
    }

}
