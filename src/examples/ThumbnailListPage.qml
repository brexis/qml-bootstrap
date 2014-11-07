import QtQuick 2.0
import "../variables/fontawesome.js" as FontAwesome
import "../lists"

Item {
    width: parent.width
    height: parent.height
    ThumbnailListView{
        anchors.fill: parent

        model: ListModel {
            ListElement{
                avatar: "qrc:/src/examples/images/blue-album.jpg"
                title:"Weezer"
                detail: "Blue Album"
            }
            ListElement{
                avatar: "qrc:/src/examples/images/siamese-dream.jpg"
                title:"Smashing Pumpkins"
                detail: "Siamese Dream"
            }
            ListElement{
                avatar: "qrc:/src/examples/images/nevermind.jpg"
                title:"Nirvana"
                detail: "Nevermind"
            }
            ListElement{
                avatar: "qrc:/src/examples/images/license-to-ill.jpg"
                title:"Beastie Boys"
                detail: "License To Ill"
            }
            ListElement{
                avatar: "qrc:/src/examples/images/dookie.jpg"
                title:"Green Day"
                detail: "Dookie"
            }
        }
    }
}
