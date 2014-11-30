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
        id: card2
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

    CardList{
        anchors.top: card2.bottom
        header: "I'm a Header in a Card!"
        footer: "I'm a Footer in a Card!"

        model: [
            {
                text: "This is a basic Card which (positive style)",
                class_name: "positive",
                leftIcon: FontAwesome.icons.fa_comments_o,
                rightIcon: FontAwesome.icons.fa_phone,
            },
            {
                text: "This is a basic Card which contains an item that has wrapping text. (energized style)",
                leftIcon: FontAwesome.icons.fa_phone,
            }
        ]
    }
}
