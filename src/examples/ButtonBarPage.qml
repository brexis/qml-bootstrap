import QtQuick 2.0
import QtQuick.Layouts 1.1
import "../variables/fontawesome.js" as FontAwesome
import "../bars"

Item {
    width: parent.width
    height: parent.height

    Item {
        width: parent.width - 20
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        Column {
            spacing: 10
            ButtonBar{
               class_name: "light"
               model: [
                   {
                       text: 'First'
                   },
                   {
                       text: 'Second'
                   },
                   {
                       text: 'Third'
                   }
               ]

               onClick: {
                   console.log('Click Index ' + index);
               }
            }

            ButtonBar{
               class_name: "stable"
               model: [
                   {
                       text: 'First'
                   },
                   {
                       text: 'Second'
                   },
                   {
                       text: 'Third'
                   }
               ]

               onClick: {
                   console.log('Click Index ' + index);
               }
            }
            ButtonBar{
               class_name: "positive"
               checkable: true
               model: [
                   {
                       text: 'First'
                   },
                   {
                       text: 'Second'
                   },
                   {
                       text: 'Third'
                   }
               ]

               onCheckedIndexChanged: {
                   console.log('Index ' + checkedIndex);
               }
            }
            ButtonBar{
               class_name: "calm"
               checkable: true
               model: [
                   {
                       text: 'First'
                   },
                   {
                       text: 'Second'
                   },
                   {
                       text: 'Third'
                   }
               ]

               onCheckedIndexChanged: {
                   console.log('Index ' + checkedIndex);
               }
            }
            ButtonBar{
               class_name: "energized"
               checkable: true
               model: [
                   {
                       text: 'First'
                   },
                   {
                       text: 'Second'
                   },
                   {
                       text: 'Third'
                   }
               ]

               onCheckedIndexChanged: {
                   console.log('Index ' + checkedIndex);
               }
            }
            ButtonBar{
               class_name: "balanced"
               checkable: true
               model: [
                   {
                       text: 'First'
                   },
                   {
                       text: 'Second'
                   },
                   {
                       text: 'Third'
                   }
               ]

               onCheckedIndexChanged: {
                   console.log('Index ' + checkedIndex);
               }
            }
            ButtonBar{
               class_name: "assertive"
               checkable: true
               model: [
                   {
                       text: 'First'
                   },
                   {
                       text: 'Second'
                   },
                   {
                       text: 'Third'
                   }
               ]

               onCheckedIndexChanged: {
                   console.log('Index ' + checkedIndex);
               }
            }
            ButtonBar{
               class_name: "royal"
               checkable: true
               model: [
                   {
                       text: 'First'
                   },
                   {
                       text: 'Second'
                   },
                   {
                       text: 'Third'
                   }
               ]

               onCheckedIndexChanged: {
                   console.log('Index ' + checkedIndex);
               }
            }
            ButtonBar{
               class_name: "dark"
               checkable: true
               model: [
                   {
                       text: 'First'
                   },
                   {
                       text: 'Second'
                   },
                   {
                       text: 'Third'
                   }
               ]

               onCheckedIndexChanged: {
                   console.log('Index ' + checkedIndex);
               }
            }
        }

    }
}
