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
            design: "light"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "stable"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "positive"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "calm"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "balanced"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "energized"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "assertive"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "royal"
            width: 100
            height: 50
        }
        ButtonDefault {
            design: "dark"
            width: 100
            height: 50
        }
    }

}
