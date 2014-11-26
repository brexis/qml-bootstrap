import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

import "../buttons"
import "../variables/buttons.js" as StyleHelper

Rectangle {
    id: root
    width: 330
    height: barContent.height

    property bool checkable: false
    property int checkedIndex: -1
    property variant model: []

    property string class_name: ""
    property var type: StyleHelper.parseButtonClass(class_name);
    border.color: type.style.active_border
    border.width: StyleHelper.button_border_width
    radius: StyleHelper.button_border_radius
    signal click (var index);

    Item {
        id: barContent
        width: parent.width - StyleHelper.button_border_width * 2
        height: row.height
        anchors.centerIn: parent
        clip: true

        Row {
            id: row
            Repeater{
                model: root.model.length
                Item{
                    width: root.width / root.model.length
                    height: btn.height

                    ButtonDefault {
                        id: btn
                        text: root.model[index].text
                        icon:  typeof(root.model[index].icon) === 'string' ? root.model[index].icon : ''
                        width: parent.width
                        radius: false
                        selected: root.checkable && index === root.checkedIndex

                        class_name: {
                            var nClassName = root.class_name;
                            if (!StyleHelper.hasClass('full', nClassName)) {
                                nClassName += " full"
                            }
                            return nClassName;
                        }

                        onClicked: {
                            root.checkedIndex = index;
                            root.click(index);
                        }
                    }
                    Rectangle{
                        visible: index !== 0
                        width: StyleHelper.button_border_width
                        height: parent.height
                        color: root.type.style.border
                    }
                }
            }
        }
    }
}
