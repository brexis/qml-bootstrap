import QtQuick 2.3
import "../styles"
ListView {
    id: root
    signal itemClicked(var item, var index);
    property bool hasDivider: false
    section.property: "divider"
    section.criteria: ViewSection.FullString
    section.labelPositioning: ViewSection.CurrentLabelAtStart | ViewSection.InlineLabels
    section.delegate: hasDivider ? dividerHeading : blank

    Component{
        id: dividerHeading
        ListDividerStyle{
            text: section
        }
    }
    Component{
        id: blank
        Item{}
    }
}
