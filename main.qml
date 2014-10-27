import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Window 2.0
import "src/buttons" as Qb

Window {
    visible: true
    width: 640
    height: 640
    title: qsTr("Hello World !")

    Column {
        anchors.centerIn: parent
        spacing: 10
        Qb.ButtonDefault {
            design: "light"
            width: 100
            height: 50
        }
        Qb.ButtonDefault {
            design: "stable"
            width: 100
            height: 50
        }
        Qb.ButtonDefault {
            design: "positive"
            width: 100
            height: 50
        }
        Qb.ButtonDefault {
            design: "calm"
            width: 100
            height: 50
        }
        Qb.ButtonDefault {
            design: "balanced"
            width: 100
            height: 50
        }
        Qb.ButtonDefault {
            design: "energized"
            width: 100
            height: 50
        }
        Qb.ButtonDefault {
            design: "assertive"
            width: 100
            height: 50
        }
        Qb.ButtonDefault {
            design: "royal"
            width: 100
            height: 50
        }
        Qb.ButtonDefault {
            design: "dark"
            width: 100
            height: 50
        }
    }

}
