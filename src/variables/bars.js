Qt.include("buttons.js");

var bar_height                      = 44;
var bar_title_font_size             = 17;
var bar_padding_portrait            = 5;
var bar_padding_landscape           = 5;
var bar_transparency                = 1;

function parseBarClass (className) {
    var style = barStyles.default;
    var classes = className.split(' ');

    for (var i = 0; i < classes.length; ++i) {
        var trimClass = classes[i].trim();
        var _style =  barStyles[trimClass];

        if (_style) {
            style = _style;
        }
    }
    return style;
}

var barStyles = {
    light: {
        bg                      : color.light,
        text                    : "#444",
        border                  : "#ddd",
        active_bg               : "#fafafa",
        active_border           : "#ccc"
    },
    stable: {
        bg                      : color.stable,
        text                    : "#444",
        border                  : "#b2b2b2",
        active_bg               : "#e5e5e5",
        active_border           : "#a2a2a2"
    },
    positive: {
        bg                      : color.positive,
        text                    : "#fff",
        border                  : Qt.darker(color.positive, 1.18),
        active_bg               : Qt.darker(color.positive, 1.18),
        active_border           : Qt.darker(color.positive, 1.18)
    },
    calm: {
        bg                      : color.calm,
        text                    : "#fff",
        border                  : Qt.darker(color.calm, 1.18),
        active_bg               : Qt.darker(color.calm, 1.18),
        active_border           : Qt.darker(color.calm, 1.18)
    },
    assertive: {
        bg                      : color.assertive,
        text                    : "#fff",
        border                  : Qt.darker(color.assertive, 1.18),
        active_bg               : Qt.darker(color.assertive, 1.18),
        active_border           : Qt.darker(color.assertive, 1.18)
    },
    balanced: {
        bg                      : color.balanced,
        text                    : "#fff",
        border                  : Qt.darker(color.balanced, 1.18),
        active_bg               : Qt.darker(color.balanced, 1.18),
        active_border           : Qt.darker(color.balanced, 1.18)
    },
    energized: {
        bg                      : color.energized,
        text                    : "#fff",
        border                  : Qt.darker(color.energized, 1.18),
        active_bg               : Qt.darker(color.energized, 1.18),
        active_border           : Qt.darker(color.energized, 1.18)
    },
    royal: {
        bg                      : color.royal,
        text                    : "#fff",
        border                  : Qt.darker(color.royal, 1.18),
        active_bg               : Qt.darker(color.royal, 1.18),
        active_border           : Qt.darker(color.royal, 1.18)
    },
    dark: {
        bg                      : color.dark,
        text                    : "#fff",
        border                  : Qt.darker(color.dark, 1.18),
        active_bg               : Qt.darker(color.dark, 1.18),
        active_border           : Qt.darker(color.dark, 1.18)
    },
    default: {
        bg                      : color.light,
        text                    : "#444",
        border                  : "#ddd",
        active_bg               : "#fafafa",
        active_border           : "#ccc"
    }
};
