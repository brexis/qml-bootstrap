import QtQuick 2.0
import "../variables/fontawesome.js" as FontAwesome
import "../lists"

Item {
    width: parent.width
    height: parent.height
    AvatarListView{
        anchors.fill: parent

        model: ListModel {
            ListElement{
                avatar: "qrc:/src/examples/images/venkman.jpg"
                title:"Venkman"
                detail: "Back off, man. I'm a scientist."
            }
            ListElement{
                avatar: "qrc:/src/examples/images/spengler.jpg"
                title:"Egon"
                detail: "We're gonna go full stream."
            }
            ListElement{
                avatar: "qrc:/src/examples/images/stantz.jpg"
                title:"Ray"
                detail: "Ugly little spud, isn't he?"
            }
            ListElement{
                avatar: "qrc:/src/examples/images/winston.jpg"
                title:"Winston"
                detail: "That's a big Twinkie."
            }
            ListElement{
                avatar: "qrc:/src/examples/images/tully.jpg"
                title:"Tully"
                detail: "Okay, who brought the dog?"
            }
            ListElement{
                avatar: "qrc:/src/examples/images/barrett.jpg"
                title:"Dana"
                detail: "I am The Gatekeeper!"
            }
            ListElement{
                avatar: "qrc:/src/examples/images/slimer.jpg"
                title:"Slimer"
                detail: "Boo!"
            }
        }
    }
}
