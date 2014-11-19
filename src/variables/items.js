Qt.include("bars.js");

function parseItemClass (className) {
    var type = itemStyles.default
    if (!className) {
        return type;
    }

    var classes = className.split(' ');

    for (var i = 0; i < classes.length; ++i) {
        var trimClass = classes[i].trim();
        var style =  itemStyles[trimClass];
        if (style) {
            type = style;
        }
    }
    return type;
}

function parseItemTextClass (className) {
    var style = {
        font_size: font_size_base,
        font_weight: 50,
        line_height: 1.25
    };

    var classes = className.split(' ');
    for (var i = 0; i < classes.length; ++i) {
        var trimClass = classes[i].trim();
        var size = itemTextStyles[trimClass];
        if (size) {
            style = size
        }
    }
    return style;
}

var itemTextStyles = {
    h1: {
        font_size:  Math.floor(font_size_base * 2.60),
        font_weight: headings_font_weight,
        line_height: headings_line_height
    },
    h2: {
        font_size:  16,
        font_weight: headings_font_weight,
        line_height: headings_line_height
    },
    h3: {
        font_size:  14,
        font_weight: headings_font_weight,
        line_height: headings_line_height
    },
    h4: {
        font_size:  12,
        font_weight: headings_font_weight,
        line_height: headings_line_height
    },
    h5: {
        font_size:  10,
        font_weight: headings_font_weight,
        line_height: headings_line_height
    },
    h6: {
        font_size:  10,
        font_weight: headings_font_weight,
        line_height: headings_line_height
    }
};

var item_font_size                  = 16;
var item_border_width               = 1;
var item_padding                    = 16;

var item_button_font_size           = 18;
var item_button_line_height         = 32;
var item_icon_font_size             = 32;
var item_icon_fill_font_size        = 28;

var item_icon_accessory_color       = "#ccc";
var item_icon_accessory_font_size   = 16;

var item_avatar_width               = 40;
var item_avatar_height              = 40;
var item_avatar_border_radius       = 4;

var item_thumbnail_width            = 80;
var item_thumbnail_height           = 80;
var item_thumbnail_margin           = 10;

var item_divider_bg                 = "#f5f5f5";
var item_divider_color              = "#222";
var item_divider_padding            = "5 15";

var itemStyles = {
    light: {
        bg                          : buttonStyles.light.bg,
        border                      : buttonStyles.light.border,
        text                        : buttonStyles.light.text,
        active_bg                   : buttonStyles.light.active_bg,
        active_border               : buttonStyles.light.active_border
    },
    stable: {
        bg                          : buttonStyles.stable.bg,
        border                      : buttonStyles.stable.border,
        text                        : buttonStyles.stable.text,
        active_bg                   : buttonStyles.stable.active_bg,
        active_border               : buttonStyles.stable.active_border
    },
    positive: {
        bg                          : buttonStyles.positive.bg,
        border                      : buttonStyles.positive.border,
        text                        : buttonStyles.positive.text,
        active_bg                   : buttonStyles.positive.active_bg,
        active_border               : buttonStyles.positive.active_border
    },
    calm: {
        bg                          : buttonStyles.calm.bg,
        border                      : buttonStyles.calm.border,
        text                        : buttonStyles.calm.text,
        active_bg                   : buttonStyles.calm.active_bg,
        active_border               : buttonStyles.calm.active_border
    },
    assertive: {
        bg                          : buttonStyles.assertive.bg,
        border                      : buttonStyles.assertive.border,
        text                        : buttonStyles.assertive.text,
        active_bg                   : buttonStyles.assertive.active_bg,
        active_border               : buttonStyles.assertive.active_border
    },
    balanced: {
        bg                          : buttonStyles.balanced.bg,
        border                      : buttonStyles.balanced.border,
        text                        : buttonStyles.balanced.text,
        active_bg                   : buttonStyles.balanced.active_bg,
        active_border               : buttonStyles.balanced.active_border
    },
    energized: {
        bg                          : buttonStyles.energized.bg,
        border                      : buttonStyles.energized.border,
        text                        : buttonStyles.energized.text,
        active_bg                   : buttonStyles.energized.active_bg,
        active_border               : buttonStyles.energized.active_border
    },
    royal: {
        bg                          : buttonStyles.royal.bg,
        border                      : buttonStyles.royal.border,
        text                        : buttonStyles.royal.text,
        active_bg                   : buttonStyles.royal.active_bg,
        active_border               : buttonStyles.royal.active_border
    },
    dark: {
        bg                          : buttonStyles.dark.bg,
        border                      : buttonStyles.dark.border,
        text                        : buttonStyles.dark.text,
        active_bg                   : buttonStyles.dark.active_bg,
        active_border               : buttonStyles.dark.active_border
    },
    default: {
        bg                          : buttonStyles.light.bg,
        border                      : buttonStyles.light.border,
        text                        : buttonStyles.light.text,
        active_bg                   : "#D9D9D9",
        active_border               : buttonStyles.light.active_border
    }
};
