import QtQuick 2.3
import QtQuick.Controls 1.2
import "src/buttons"
import "src/lists"
import "src/variables/fontawesome.js" as FontAwesome

ApplicationWindow {
    visible: true
    width: 800
    height: 1280
    FontLoader{ source: "qrc:/src/fonts/fontawesome-webfont.ttf"}
    Rectangle {
        anchors.fill: parent
    }

    toolBar: Rectangle {
        width: parent.width
        height: 70
        color: "#e9e9ea"

        Rectangle {
            id: backButton
            width: opacity ? 60 : 0
            anchors.left: parent.left
            anchors.leftMargin: 20
            opacity: stackView.depth > 1 ? 1 : 0
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: true
            height: 60
            radius: 4
            color: backmouse.pressed ? "#ceced1" : "transparent"
            Behavior on opacity { NumberAnimation{} }
            Text{
                font.family: "FontAwesome"
                font.pixelSize: 32
                text: FontAwesome.icons.fa_angle_left
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                id: backmouse
                anchors.fill: parent
                anchors.margins: -10
                onClicked: stackView.pop()
            }
        }

        Text {
            font.pixelSize: 22
            Behavior on x { NumberAnimation{ easing.type: Easing.OutCubic} }
            x: backButton.x + backButton.width + 20
            anchors.verticalCenter: parent.verticalCenter
            color: "black"
            text: "Qml Bootstrap Demo"
        }
    }

    ListModel {
        id: pageModel
        ListElement {
            text: "Buttons Demo"
            page: "src/examples/ButtonPage.qml"
        }
        ListElement {
            text: "ListView Demo"
            page: "src/examples/DefaultListPage.qml"
        }
        ListElement {
            text: "ListView with icon Demo"
            page: "src/examples/IconListPage.qml"
        }
    }

    StackView {
        id: stackView
        anchors.fill: parent
        focus: true
        Keys.onReleased: if (event.key === Qt.Key_Back && stackView.depth > 1) {
                             stackView.pop();
                             event.accepted = true;
                         }

        initialItem: Item {
            width: parent.width
            height: parent.height
            DefaultListView{
                model: pageModel
                anchors.fill: parent
                onItemClicked: stackView.push(Qt.resolvedUrl(item.page))
            }
        }
    }
}
