module pos(){
    translate([0, 0, 2.5]) cylinder(h=5, d1=0, d2=10, center=true, $fn=360);
translate([0,0,6.5]) cylinder(h=3, d=10, center=true, $fn=360);
    intersection(){
        translate([0,0,14]) cylinder(h=15, d=4.5, center=true, $fn=360);
        translate([0,0,17.5]) cylinder(h=22, d1=7, d2=0, center=true, $fn=360);
    };
}

module cut(rot){
    rotate([0, 0, rot]) 
    intersection(){
        cylinder(h=0.1, d=0.5,center=true, $fn=360);
        translate([0,0.495,0]) cube([1,1,1], center=true);
}
}

difference(){
    pos();
    translate ([9, 0, 5]) cube([10,10,10], center=true);
    translate([-1.8, 0, 5.5]) cube([10, 6.55, 1.75], center=true);
    translate([0,0,20.5]) cylinder(h=3, d=0.3, center=true, $fn=360);
}
