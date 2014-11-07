Qt.include("buttons.js");

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
        font_size: 14,
        font_weigth: 50
    }

    var classes = className.split(' ');
    var sizeFactor = {
        h2: 16,
        h3: 14,
        h4: 12,
        h5: 10,
        h6: 10
    }

    for (var i = 0; i < classes.length; ++i) {
        var trimClass = classes[i].trim();
        var size = sizeFactor[trimClass];
        if (size) {
            style.font_size = size;
            style.font_weight = headings_font_weight;
        }
    }
    return style;
}
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
