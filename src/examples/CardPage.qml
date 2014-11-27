import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../cards"
import "../variables/fontawesome.js" as FontAwesome

Item {
    width: parent.width
    height: parent.height

    Card{
        id: card1
        model: ListModel{
            ListElement{
                text: "This is a basic Card which"
            }

            ListElement{
                text: "This is a basic Card which contains an item that has wrapping text."
            }
        }
    }

    Card{
        anchors.top: card1.bottom
        header: "I'm a Header in a Card!"
        footer: "I'm a Footer in a Card!"

        model: ListModel{
            ListElement{
                text: "This is a basic Card which (positive style)"
                class_name: "positive"
            }

            ListElement{
                text: "This is a basic Card which contains an item that has wrapping text. (energized style)"
                class_name: "energized"
            }
        }
    }

}
