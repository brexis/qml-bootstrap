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
            className: "light"
            width: 100
            height: 50
        }
        ButtonDefault {
            className: "stable"
            width: 100
            height: 50
        }
        ButtonDefault {
            className: "positive"
            width: 100
            height: 50
        }
        ButtonDefault {
            className: "calm"
            width: 100
            height: 50
        }
        ButtonDefault {
            className: "balanced"
            width: 100
            height: 50
        }
        ButtonDefault {
            className: "energized"
            width: 100
            height: 50
        }
        ButtonDefault {
            className: "assertive"
            width: 100
            height: 50
        }
        ButtonDefault {
            className: "royal"
            width: 100
            height: 50
        }
        ButtonDefault {
            className: "dark"
            width: 100
            height: 50
        }
    }

}
