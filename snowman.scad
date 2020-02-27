//This program builds a snowman with a random body
//Sam Craig and Rob Klock

//Set random variables and transfer values for our snowman body
rad = rands(10,20,1)[0];
sphere(rad);
rad2 = rands(rad * .33, rad * .75, 1)[0];


trans = (rad2 + rad - 2);
translate([0,0, trans])
sphere(rad2);

hull(){
    translate(rad,0,trans);
    sphere(r = 1);
    translate(rad, rad + 10, trans);
    sphere(r = 1);
}

rad3 = rands(rad2 * .33, rad2 * .75, 1)[0];
trans2 = (rad3 + trans + rad2 - 2);
translate([0,0, trans2])
sphere(rad3);

//make the hat random based on a boolean