TEXT = "XXX";

include <divider_common.scad>

union() {
    rounded(W, H);
    translate([W/2,0,0]) rounded(W/2, H+TAB_H);

    translate([W/2-RAD*2, H-PAD, 0]) {
        difference() {
            translate([RAD,0,0]) cube([RAD, RAD, THICK]);
            translate([RAD, RAD, 0])cylinder(r=RAD, h=THICK);
        }
    }
    #translate([W/2/2 + W/2, H + TAB_H - 0.5, 0]) linear_extrude(THICK*2) text(TEXT, size=6, font="Gloucester MT Extra Condensed:style=Regular", valign="top", halign="center");
}


