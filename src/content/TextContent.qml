import QtQuick 2.0
import "../variables/base.js" as StyleHelper

Text{
    property string class_name: ""
    property var style: StyleHelper.parseTextClass(class_name)
    font.pixelSize: style.font_size
    font.weight: style.font_weight
    color: StyleHelper.base_color
    lineHeight: style.line_height
}
