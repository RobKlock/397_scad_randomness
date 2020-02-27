//This program builds a snowman with a random body
//Sam Craig and Rob Klock

//Set random variables and transfer values for our snowman body

rad = rands(10,20,1)[0];
color([1,1,1]) sphere(rad);
rad2 = rands(rad * .33, rad * .75, 1)[0];


trans = (rad2 + rad - 2);
translate([0,0, trans])
color([1,1,1]) sphere(rad2);

armlength = rands(10, 20, 1)[0];
color([0.6,0.4,0.0])
hull(){
    
    arm_angle = rands(trans - 10,trans + 10, 1)[0];
    translate([armlength,0,arm_angle])
    
    color([0.6,0.4,0.0]) sphere(r = 1);
    translate([0,0, trans])
    color([0.6,0.4,0.0]) sphere(r = 1);
}

color([0.6,0.4,0.3])
hull(){
    
    arm_angle = rands(trans - 10,trans + 10, 1)[0];
    translate([-armlength,0, arm_angle])
    
    sphere(r = 1);
    translate([0,0, trans])
    sphere(r = 1);
}
rad3 = rands(rad2 * .33, rad2 * .75, 1)[0];
trans2 = (rad3 + trans + rad2 - 2);
translate([0,0, trans2])
color([1,1,1]) sphere(rad3);

//make the hat random based on a boolean