import QtQuick 2.3
import "../styles"
ListView {
    id: root
    signal itemClicked(var item, var index);
    section.property: "divider"
    section.criteria: ViewSection.FullString
    section.delegate: dividerHeading
    section.labelPositioning: ViewSection.CurrentLabelAtStart | ViewSection.InlineLabels

    Component{
        id: dividerHeading
        ListDividerStyle{
        }
    }
}
