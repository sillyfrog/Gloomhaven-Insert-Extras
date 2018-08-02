H = 44;
W = 68;
THICK = 0.4;
TAB_H = 10;

RAD = 2.5;

PAD = 0.1;

$fn = 30;

module rounded(width, height) {
    w = width - RAD *2;
    h = height - RAD *2;
    hull() {
        translate([RAD, RAD, 0]) cube([w, h, THICK]);
        translate([RAD, RAD, 0]) cylinder(r=RAD, h=THICK);
        translate([RAD+w, RAD, 0]) cylinder(r=RAD, h=THICK);
        translate([RAD, RAD+h, 0]) cylinder(r=RAD, h=THICK);
        translate([RAD+w, RAD+h, 0]) cylinder(r=RAD, h=THICK);
    }
}

