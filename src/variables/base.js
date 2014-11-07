Qt.include("colors.js");

var font_family_sans_serif         = "Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif";
var font_family_light_sans_serif   = "Helvetica Neue-Light, Helvetica Neue Light, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif";
var font_family_serif              = "Georgia, Times New Roman, Times, serif";
var font_family_monospace          = "Monaco, Menlo, Consolas, Courier New, monospace";

var font_family_base               = font_family_sans_serif;
var font_size_base                 = 14;
var font_size_large                = 18;
var font_size_small                = 11;

var line_height_base               = 1.428571429; // 20/14
var line_height_computed           = Math.floor(font_size_base * line_height_base); // ~20
var line_height_large              = 1.33;
var line_height_small              = 1.5;

var headings_font_family           = font_family_base;
var headings_font_weight           = 63;
var headings_line_height           = 1.2;

var base_background_color          = "#fff";
var base_color                     = "#000";

var link_color                     = color.positive;
var link_hover_color               = Qt.darker(link_color, 1.18);

var content_padding                = 10;

var padding_base_vertical          = 6;
var padding_base_horizontal        = 12;

var padding_large_vertical         = 10;
var padding_large_horizontal       = 16;

var padding_small_vertical         = 5;
var padding_small_horizontal       = 10;

var border_radius_base             = 4;
var border_radius_large            = 6;
var border_radius_small            = 3;

function parseTextClass (className) {
    var style = {
        font_size: font_size_base,
        font_weight: 50
    };

    var classes = className.split(' ');
    var sizeFactor = {
        h1: Math.floor(font_size_base * 2.60),
        h2: Math.floor(font_size_base * 2.15),
        h3: Math.floor(font_size_base * 1.70),
        h4: Math.floor(font_size_base * 1.25),
        h5: Math.floor(font_size_base),
        h6: Math.floor(font_size_base * 0.85)
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
