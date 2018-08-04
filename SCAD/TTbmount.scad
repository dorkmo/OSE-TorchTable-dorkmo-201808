include <TTvars.scad>;

difference(){
translate([0,0,-(1+boltD)])    
cube([bmountX,bmountY,bmountZ]);

translate([(barX+((brrOD+1)*2)-(barX+(bmountGap*2)))/2,0,0])
cube([barX+(bmountGap*2),X2X,barZ+bmountGap]);    

translate([0,(X2X-(brrOD+(bmountbrrGap*2)))/2,barZ-brrT-sprOD-0.5])
cube([barX+((brrOD+1)*2),brrOD+(bmountbrrGap*2),brrT+(bmountbrrGap*2)]);    
    
    
    
    
    
    
} //end main difference