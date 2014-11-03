import QtQuick 2.0
import "../variables/fontawesome.js" as FontAwesome
import "../lists"

Item {
    width: parent.width
    height: parent.height
    IconListView{
        anchors.fill: parent
        model: [{
            text: "Check mail",
            leftIcon: FontAwesome.icons.fa_comments_o,
            rightIcon: FontAwesome.icons.fa_phone,
            note: "Grammy",
            badge: "0",
            badge_class_name: "assertive"
        },
        {
            text: "Call Mum",
            leftIcon: FontAwesome.icons.fa_phone,
            badge: "3",
            badge_class_name: "positive",
            class_name: "dark",
            note: "Note",
        }
        ]
    }
}
