Qt.include("base.js");

function parseButtonClass (className) {
    var type = {
        style: buttonStyles.default,
        size: buttonSizes.default
    };
    var classes = className.split(' ');

    for (var i = 0; i < classes.length; ++i) {
        var trimClass = classes[i].trim();
        var size = buttonSizes[trimClass];
        var style =  buttonStyles[trimClass];
        if (size) {
            type.size = size;
        }
        if (style) {
            type.style = style;
        }
    }
    return type;
}

var button_color                = "#222";
var button_block_margin         = 10;
var button_clear_padding        = 6;
var button_border_radius        = 2;
var button_border_width         = 1;

var buttonSizes = {
    "default": {
        font_size               : 16,
        height                  : 42,
        padding                 : 12,
        icon_size               : 24
    },
    large: {
        font_size               : 20,
        height                  : 54,
        padding                 : 16,
        icon_size               : 32
    },
    small: {
        font_size               : 12,
        height                  : 28,
        padding                 : 4,
        icon_size               : 16
    },
    bar: {
        font_size               : 13,
        height                  : 32,
        padding                 : 8,
        icon_size               : 20
    }
};

var buttonStyles = {
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
        bg                      : color.stable,
        text                    : "#444",
        border                  : "#b2b2b2",
        active_bg               : "#e5e5e5",
        active_border           : "#a2a2a2"
    }
};
