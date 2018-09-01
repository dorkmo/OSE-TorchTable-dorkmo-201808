include <TTvars.scad>;

use <TTbmount.scad>;
use <TTxmount.scad>;


//Y flat bar origin
translate([-barX/2,0,0])
cube([barX,barLY,barZ]);    
//Y flat bar far
translate([Y2YA,0,0])
translate([-barX/2,0,0])
cube([barX,barLY,barZ]);    


//Y translate
translate([0,20,0]){
//Y slider group
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

} //end main Y translate


//test
translate([Y2YA,0,0]){
mirror([1,0,0]){
TTxmount();
} //end mirror
} //end translate

TTxmount();
translate([((((barX+(bmountGap*2)))/2)+0.5),0.1,0])
cube([barLX,barX,barZ]);   