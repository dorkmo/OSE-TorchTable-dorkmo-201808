include <TTvars.scad>;

use <TTbmount.scad>;
use <TTxmount3.scad>;
use <TTx2mount.scad>;
use <TTcorner3.scad>;

//TODO
////*belt attachment point
////*square tubing corner mounts. could mount nut/bolt out top to adjust H
////**steppers mounted in corners
////*Z motion. can "OSE Universal Axis" be mounted?
////*TTxmount.scad's mirror should be its own part
////**should also remove stepper mount holes, add idler mount where needed
////***could find idler bearing with the same ID as stepper shaft OD
////***use same printed part for both
////**use standard bearing for idler, place inside printed cylinder to match pully OD
////*add two set screws onto TTxmount to tighten against plate and angle
////*render belt

//Y flat bar origin
translate([-barX/2,0,0])
cube([barX,barLY,barZ]);    
//Y flat bar far
translate([Y2YA,0,0])
translate([-barX/2,0,0])
cube([barX,barLY,barZ]);    


//Y translate
translate([0,20,0]){
//Y slider group near
TTbmount();
TTxmount();
translate([0,X2X,0])
mirror([0,1,0])
TTxmount();

//Y slider group far
translate([Y2YA,0,0]){
mirror([1,0,0]){
TTbmount();
TTxmount();
translate([0,X2X,0])
mirror([0,1,0])
TTxmount();
} //end mirror
} //end translate

//X flat bar near
translate([((((barX+(bmountGap*2)))/2)+0.5),-barX,0])
cube([barLX,barX,barZ]);    
//X flat bar far
translate([((((barX+(bmountGap*2)))/2)+0.5),X2X,0])
cube([barLX,barX,barZ]);    

//X translate
translate([20,0,0]){
//X slider group near
translate([0,-barX/2,0]){    
rotate([0,0,90]){
TTbmount();
//TTxmount();
//translate([0,X2X,0])
//TTx2mount();
} //end group rotate
} //end group translate

//X slider group far
translate([0,X2X+barX/2,0]){    
rotate([0,0,90]){
    mirror([1,0,0]){
TTbmount();
//TTxmount();
//translate([0,X2X,0])
//TTx2mount();
    } //end mirror
} //end group rotate
} //end group translate

} //end X translate

} //end main Y translate


//corner
translate([Y2YA-(barX/2),-0.5-(barX+(bmountGap*2))/2,0]){
rotate([0,0,90])
TTxmount();
translate([0,(xmountX/2)+barX,0])    
rotate([0,0,0])
mirror([0,1,0])    
TTcorner();
}

translate([barX/2,-0.5-(barX+(bmountGap*2))/2,0])
rotate([0,0,90])
mirror([0,1,0])
TTxmount();
translate([0,barX+bmountGap,0])
rotate([0,0,180])
TTcorner();

//translate([((((barX+(bmountGap*2)))/2)+0.5),0.1,0])
//cube([barLX,barX,barZ]);   