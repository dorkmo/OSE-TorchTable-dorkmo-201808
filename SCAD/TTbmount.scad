include <TTvars.scad>;

TTbmount();

module TTbmount(){
translate([-bmountX/2,0,0])
difference(){
translate([0,0,-(1+boltD)])    
cube([bmountX,bmountY,bmountZ]);

//bar hole
translate([(barX+((brrOD+1)*2)-(barX+(bmountGap*2)))/2,0,0])
cube([barX+(bmountGap*2),X2X,barZ+bmountGap]);    

translate([0,0,-(1+boltD)])
    cube([(bmountX/2)+((barX+(bmountGap*2))/2),X2X,(bmountZ-(1+boltD))/2+(1+boltD)]);

//bearing holes
translate([0,(X2X-(brrOD+(bmountbrrGap*2)))/2,barZ-brrT-sprOD-0.5])
cube([barX+((brrOD+1)*2),brrOD+(bmountbrrGap*2),brrT+(bmountbrrGap*2)]);    
    
translate([(bmountX/2)-(brrT+(bmountbrrGap*2))/2,((brrOD/2)+1)-((brrOD+(bmountbrrGap*2))/2),barZ])    
cube([brrT+(bmountbrrGap*2),brrOD+(bmountbrrGap*2),(1+boltD)]);    
translate([(bmountX/2)-(brrT+(bmountbrrGap*2))/2,bmountY-(brrOD/2)-1-((brrOD+(bmountbrrGap*2))/2),barZ])    
cube([brrT+(bmountbrrGap*2),brrOD+(bmountbrrGap*2),(1+boltD)]);        

translate([0,(X2X-(brrOD+(bmountbrrGap*2)))/2,0.5])
cube([barX+((brrOD+1)*2),brrOD+(bmountbrrGap*2),brrT+(bmountbrrGap*2)]);    


//bearing mount holes
    translate([0,(brrOD/2)+1,barZ+(brrOD/2)])
    rotate([0,90,0])    
        cylinder(d=brrID, h=bmountX);
    translate([0,bmountY-(brrOD/2)-1,barZ+(brrOD/2)])
    rotate([0,90,0])
        cylinder(d=brrID, h=bmountX);
    
    translate([(bmountX/2)-(barX/2)-(brrOD/2),bmountY/2,barZ-brrT-sprOD-0.5-1])    
        cylinder(d=brrID, h=bmountZ-(1+boltD)-(barZ-brrT-sprOD-0.5-1));
    translate([(bmountX/2)+(barX/2)+(brrOD/2),bmountY/2,-0.25])    
        #cylinder(d=brrID, h=bmountZ+0.25-(1+boltD));
            
//X rail attachment mount holes

    //conflict with bearing bolt hole

translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2),0,-(1+boltD)/2])
rotate([-90,0,0])
    cylinder(d=boltD, h=bmountZ);
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2),0,barZ+((1+boltD)/2)])
rotate([-90,0,0])
    cylinder(d=boltD, h=bmountZ);
    
    
} //end main difference

} //end module

