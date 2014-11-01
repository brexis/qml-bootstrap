import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import "src/buttons"

Window {
    visible: true
    width: 640
    height: 640
    title: qsTr("Hello World !")
    color: 'black'

    Column {
        anchors.centerIn: parent
        spacing: 10
        ButtonDefault {
            class_name: "light outline"
        }
        ButtonDefault {
            class_name: "stable outline"
        }
        ButtonDefault {
            class_name: "positive outline"
        }
        ButtonDefault {
            class_name: "calm outline"
        }
        ButtonDefault {
            class_name: "balanced outline"
        }
        ButtonDefault {
            class_name: "energized outline"
        }
        ButtonDefault {
            class_name: "assertive outline"
        }
        ButtonDefault {
            class_name: "royal outline"
        }
        ButtonDefault {
            class_name: "dark outline"
        }
    }

}
