module xbox (){
difference(){
    cube([17, 17, 4], true);
    cube([13,13,5], true);
}

translate([7,7,2])
    cylinder(h=4,d=1, center=true);
translate([-7,-7,2])
    cylinder(h=4,d=1, center=true);

translate([10,0,0])
    cube([4,4,4], true);

translate([-10,0,0])
    cube([4,4,4], true);
}

difference(){
    xbox();

translate([9, 0, 0]) cylinder(h=6, d=1, center=true);
    translate([-9, 0, 0]) cylinder(h=6, d=1, center=true);
}