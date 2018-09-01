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
////center X bearing hole
translate([(bmountX/2),(X2X-(brrOD+(bmountbrrGap*2)))/2,barZ-brrT-sprOD-0.5])
cube([(bmountX/2),brrOD+(bmountbrrGap*2),brrT+(bmountbrrGap*2)]);    
////near lower X bearing hole
translate([(bmountX/2),(brrOD/2)+1+(brrOD/2)+0.25+(brrID/2)-((brrOD+(bmountbrrGap*2))/2),0.5])
cube([(bmountX/2),brrOD+(bmountbrrGap*2),brrT+(bmountbrrGap*2)]);
////far lower X bearing hole
translate([(bmountX/2),bmountY-(brrOD/2)-1-(brrOD/2)-0.25-(brrID/2)-((brrOD+(bmountbrrGap*2))/2),0.5])
cube([(bmountX/2),brrOD+(bmountbrrGap*2),brrT+(bmountbrrGap*2)]);    
////near Y bearing hole  - need to calculate cube Z   
translate([(bmountX/2)-(brrT+(bmountbrrGap*2))/2,((brrOD/2)+1)-((brrOD+(bmountbrrGap*2))/2),barZ])
cube([brrT+(bmountbrrGap*2),brrOD+(bmountbrrGap*2),bmountZ-barZ-(1+boltD)]);    
////far Y bearing hole
translate([(bmountX/2)-(brrT+(bmountbrrGap*2))/2,bmountY-(brrOD/2)-1-((brrOD+(bmountbrrGap*2))/2),barZ])    
cube([brrT+(bmountbrrGap*2),brrOD+(bmountbrrGap*2),bmountZ-barZ-(1+boltD)]);        
  


//bearing mount holes
    ////near Y bearing shaft
    translate([0,(brrOD/2)+1,barZ+(brrOD/2)])
    rotate([0,90,0])    
        cylinder(d=brrID, h=bmountX);
    ////far Y bearing shaft    
    translate([0,bmountY-(brrOD/2)-1,barZ+(brrOD/2)])
    rotate([0,90,0])
        cylinder(d=brrID, h=bmountX);
    ////near outer X bearing shaft
    translate([(bmountX/2)-(barX/2)-(brrOD/2),(brrOD/2)+1+(brrOD/2)+0.25+(brrID/2),barZ-brrT-sprOD-0.5-1])   
        cylinder(d=brrID, h=bmountZ-(1+boltD)-(barZ-brrT-sprOD-0.5-1));
    ////far outer X bearing shaft
    translate([(bmountX/2)-(barX/2)-(brrOD/2),bmountY-(brrOD/2)-1-(brrOD/2)-0.25-(brrID/2),barZ-brrT-sprOD-0.5-1])   
        cylinder(d=brrID, h=bmountZ-(1+boltD)-(barZ-brrT-sprOD-0.5-1));
    ////center inner X bearing shaft
    translate([(bmountX/2)+(barX/2)+(brrOD/2),bmountY/2,barZ-brrT-sprOD-0.5-1])    
        cylinder(d=brrID, h=bmountZ-(1+boltD)-(barZ-brrT-sprOD-0.5-1));
    ////near inner X bearing shaft
    translate([(bmountX/2)+(barX/2)+(brrOD/2),(brrOD/2)+1+(brrOD/2)+0.25+(brrID/2),-0.25])    
        cylinder(d=brrID, h=bmountZ+0.25-(1+boltD));
    ////far inner X bearing shaft
    translate([(bmountX/2)+(barX/2)+(brrOD/2),bmountY-(brrOD/2)-1-(brrOD/2)-0.25-(brrID/2),-0.25])    
        cylinder(d=brrID, h=bmountZ+0.25-(1+boltD));
        
            
//X rail attachment mount holes

translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2),0,-(1+boltD)/2])
rotate([-90,0,0])
    cylinder(d=boltD, h=bmountZ);
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2),0,barZ+(brrOD/2)+(brrID/2)+(0.25)+(boltD/2)])
rotate([-90,0,0])
    cylinder(d=boltD, h=bmountZ);
    
    
} //end main difference

} //end module

