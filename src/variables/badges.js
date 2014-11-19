Qt.include("items.js");

function parseBadgeClass (className) {
    var type = badgeStyles.default
    if (!className) {
        return type;
    }

    var classes = className.split(' ');

    for (var i = 0; i < classes.length; ++i) {
        var trimClass = classes[i].trim();
        var style =  badgeStyles[trimClass];
        if (style) {
            type = style;
        }
    }
    return type;
}

var badge_font_size                  = 14;
var badge_border_radius              = 10;
var badge_font_weight                = 75

var badgeStyles = {
    light: {
        bg                          : buttonStyles.light.bg,
        text                        : buttonStyles.light.text
    },
    stable: {
        bg                          : buttonStyles.stable.bg,
        text                        : buttonStyles.stable.text
    },
    positive: {
        bg                          : buttonStyles.positive.bg,
        text                        : buttonStyles.positive.text
    },
    calm: {
        bg                          : buttonStyles.calm.bg,
        text                        : buttonStyles.calm.text
    },
    assertive: {
        bg                          : buttonStyles.assertive.bg,
        text                        : buttonStyles.assertive.text
    },
    balanced: {
        bg                          : buttonStyles.balanced.bg,
        text                        : buttonStyles.balanced.text
    },
    energized: {
        bg                          : buttonStyles.energized.bg,
        text                        : buttonStyles.energized.text
    },
    royal: {
        bg                          : buttonStyles.royal.bg,
        text                        : buttonStyles.royal.text
    },
    dark: {
        bg                          : buttonStyles.dark.bg,
        text                        : buttonStyles.dark.text
    },
    default: {
        bg                          : "transparent",
        text                        : "#AAAAAA"
    }
};
