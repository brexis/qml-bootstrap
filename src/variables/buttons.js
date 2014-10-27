Qt.include("colors.js");

var button = {
    color: '#222',
    block_margin: 10,
    clear_padding: 6,
    border_radius: 2,
    border_width: 1,

    font_size: 16,
    height: 42,
    padding: 12,
    icon_size: 24,
}

var sizes = [{
        className: "large",
        font_size: 20,
        height: 54,
        padding: 16,
        icon_size: 32,
    },
    {
        className: "small",
        font_size: 12,
        height: 28,
        padding: 4,
        icon_size: 16,
    },
    {
        className: "bar",
        font_size: 13,
        height: 32,
        padding: 8,
        icon_size: 20,
    }
];

var styles = [{
    className: "light",
    bg: color.light,
    text: '#444',
    border: '#ddd',
    active_bg: '#fafafa',
    active_border: '#ccc',
    },
    {
        className: "stable",
        bg: color.stable,
        text: '#444',
        border: '#b2b2b2',
        active_bg: '#e5e5e5',
        active_border: '#a2a2a2'
    },
    {
        className: "positive",
        bg: color.positive,
        text: '#fff',
        border: Qt.darker(color.positive, 1.18),
        active_bg: Qt.darker(color.positive, 1.18),
        active_border: Qt.darker(color.positive, 1.18)
    },
    {
        className: "calm",
        bg: color.calm,
        text: '#fff',
        border: Qt.darker(color.calm, 1.18),
        active_bg: Qt.darker(color.calm, 1.18),
        active_border: Qt.darker(color.calm, 1.18)
    },
    {
        className: "assertive",
        bg: color.assertive,
        text: '#fff',
        border: Qt.darker(color.assertive, 1.18),
        active_bg: Qt.darker(color.assertive, 1.18),
        active_border: Qt.darker(color.assertive, 1.18)
    },
    {
        className: "balanced",
        bg: color.balanced,
        text: '#fff',
        border: Qt.darker(color.balanced, 1.18),
        active_bg: Qt.darker(color.balanced, 1.18),
        active_border:  Qt.darker(color.balanced, 1.18)
    },
    {
        className: "energized",
        bg: color.energized,
        text: '#fff',
        border: Qt.darker(color.energized, 1.18),
        active_bg: Qt.darker(color.energized, 1.18),
        active_border: Qt.darker(color.energized, 1.18)
    },
    {
        className: "royal",
        bg: color.royal,
        text: '#fff',
        border: Qt.darker(color.royal, 1.18),
        active_bg: Qt.darker(color.royal, 1.18),
        active_border: Qt.darker(color.royal, 1.18)
    },
    {
        className: "dark",
        bg: color.dark,
        text: '#fff',
        border: '#111',
        active_bg: '#262626',
        active_border: '#000'
    },
    {
        className: "default",
        bg: color.stable,
        text: '#444',
        border: '#b2b2b2',
        active_bg: '#e5e5e5',
        active_border: '#a2a2a2'
    }
]

function getSize (className) {
    for (var i = 0; i < sizes.length; i++) {
        if (sizes[i].className === className) {
            return sizes[i];
        }
    }
}

function getStyle (className) {
    for (var i = 0; i < styles.length; i++) {
        if (styles[i].className === className) {
            return styles[i];
        }
    }
}
