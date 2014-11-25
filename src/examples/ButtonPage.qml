import QtQuick 2.0
import QtQuick.Layouts 1.1
import "../buttons"
import "../variables/fontawesome.js" as FontAwesome
Item {
    width: parent.width
    height: parent.height
    ColumnLayout {
        spacing: 10
        anchors.fill: parent
        anchors.topMargin: 10

        RowLayout{
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            Layout.preferredWidth: parent.width - 20

            Column {
                spacing: 10
                Layout.alignment: Qt.AlignTop
                ButtonDefault {
                    checkable: true
                    checked: true
                    class_name: "small"
                    text: "Button small"
                }
                ButtonDefault {
                    text: "Button Default"
                }
                ButtonDefault {
                    class_name: "large"
                    text: "Button Large"
                }
                ButtonDefault {
                    class_name: "clear"
                    text: "Button default clear"
                }
                ButtonDefault {
                    class_name: "outline"
                    text: "Button default outline"
                }
            }
            Column {
                spacing: 10
                Layout.alignment: Qt.AlignTop
                ButtonDefault {
                    class_name: "stable"
                    text: "Button default stable"
                }
                ButtonDefault {
                    class_name: "calm"
                    text: "Button default calm"
                }
                ButtonDefault {
                    class_name: "balanced"
                    text: "Button default balanced"
                }
                ButtonDefault {
                    class_name: "energized"
                    text: "Button default energized"
                }
                ButtonDefault {
                    class_name: "assertive"
                    text: "Button default assertive"
                }
                ButtonDefault {
                    class_name: "royal"
                    text: "Button default royal"
                }
                ButtonDefault {
                    class_name: "dark"
                    text: "Button default dark"
                }
            }
            Column {
                spacing: 10
                Layout.alignment: Qt.AlignTop
                ButtonDefault {
                    class_name: "dark outline"
                    text: "Back"
                    icon: FontAwesome.icons.fa_angle_left
                }
                ButtonDefault {
                    class_name: "dark outline"
                    text: "Next"
                    icon: FontAwesome.icons.fa_angle_right
                    iconRight: true
                }
                ButtonDefault {
                    class_name: "dark outline"
                    icon: FontAwesome.icons.fa_cog
                }
            }
        }
        Column{
            Layout.alignment: Qt.AlignTop | Qt.AlignHCenter
            Layout.preferredWidth: parent.width - 20
            spacing: 10

            ButtonDefault {
                class_name: "positive block"
                text: "Button positive block width"
            }
            ButtonDefault {
                class_name: "calm block"
                text: "Button calm block width"
            }
        }
        Column{
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignTop
            spacing: 10

            ButtonDefault {
                class_name: "energized full"
                text: "Button energized full width"
            }
            ButtonDefault {
                class_name: "dark full"
                text: "Button dark full width"
            }
        }
    }
}
