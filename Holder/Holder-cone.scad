module pos(){
    translate([0, 0, 2.5]) cylinder(h=5, d1=0, d2=10, center=true, $fn=360);
translate([0,0,6.5]) cylinder(h=3, d=10, center=true, $fn=360);
    intersection(){
        translate([0,0,17.5]) cylinder(h=23, d=4.5, center=true, $fn=360);
        translate([0,0,17.5]) cylinder(h=22, d1=7, d2=0, center=true, $fn=360);
    };
}

difference(){
    pos();
    translate ([9, 0, 5]) cube([10,10,10], center=true);
    translate([-1.8, 0, 5.5]) cube([10, 6.55, 1.75], center=true);
    translate([0,0, 24.5]) cylinder(h=12, d=0.1, center=true, $fn=360);
}