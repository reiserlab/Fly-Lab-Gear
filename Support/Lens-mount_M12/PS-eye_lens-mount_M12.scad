module xbox (){
    import("./M12_Lens_Mount.stl");

translate([0,0,2])
difference(){
    cube([17, 17, 4], true);
    cube([13,13,5], true);
}

translate([7,7,0])
    cylinder(h=4,d=1, center=true, $fs=0.1);
translate([-7,-7,0])
    cylinder(h=4,d=1, center=true, $fs=0.1);

translate([10,0,4])
    cube([4,4,8], true);

translate([-10,0,4])
    cube([4,4,8], true);
};

difference(){
    xbox();

translate([9, 0, 0]) cylinder(h=18, d=1.3, center=true, $fs=0.1);
    translate([-9, 0, 0]) cylinder(h=18, d=1.3, center=true, $fs=0.1);
}