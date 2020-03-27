$fn = 90;
difference(){
    cube([40,30, 2]);
    rotate([90, 0, 0]) translate([5, 2, -6.5]){
        union(){
            cylinder(h=3, r=.7 );
            sphere(.7);
            translate([0,0,3]) sphere(.7);
            }
        };
    rotate([90, 0, 0]) translate([15, 2, -6.5]){
        union(){
            cylinder(h=3, r=.9 );
            sphere(.9);
            translate([0,0,3]) sphere(.9);
            }
        };
     rotate([90, 0, 0]) translate([25, 2, -6.5]){
        union(){
            cylinder(h=3, r=1.1 );
            sphere(1.1);
            translate([0,0,3]) sphere(1.1);
            }
        };
        
     rotate([90, 0, 0]) translate([5, 1.9, -16.5]){
        union(){
            cylinder(h=3, r=.7 );
            sphere(.7);
            translate([0,0,3]) sphere(.7);
            }
        };
    rotate([90, 0, 0]) translate([15, 1.9, -16.5]){
        union(){
            cylinder(h=3, r=.9 );
            sphere(.9);
            translate([0,0,3]) sphere(.9);
            }
        };
     rotate([90, 0, 0]) translate([25, 1.9, -16.5]){
        union(){
            cylinder(h=3, r=1.1 );
            sphere(1.1);
            translate([0,0,3]) sphere(1.1);
            }
        };
        
        rotate([90, 0, 0]) translate([5, 1.6, -26.5]){
        union(){
            cylinder(h=3, r=.7 );
            sphere(.7);
            translate([0,0,3]) sphere(.7);
            }
        };
    rotate([90, 0, 0]) translate([15, 1.5, -26.5]){
        union(){
            cylinder(h=3, r=.9 );
            sphere(.9);
            translate([0,0,3]) sphere(.9);
            }
        };
     rotate([90, 0, 0]) translate([25, 1.4, -26.5]){
        union(){
            cylinder(h=3, r=1.1 );
            sphere(1.1);
            translate([0,0,3]) sphere(1.1);
            }
        };
}
