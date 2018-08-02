FLOOR = 1.4;
FINGER_DIA = 25;

INNER_H = 45;

$fn = 100;

difference() {
    cube([127, 75, INNER_H+FLOOR-0.001]);
    translate([3, 72, FLOOR]) rotate([90,0,0]) linear_extrude(height=69) polygon([[0,45],[9.5,0],[111.5,0],[121,45]]);
    translate([-0.001, 75/2, INNER_H+FLOOR-6-FINGER_DIA/2]) rotate([0, 90, 0]) cylinder(d=FINGER_DIA, h=130);
}

