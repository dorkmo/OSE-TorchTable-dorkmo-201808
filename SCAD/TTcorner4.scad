include <TTvars.scad>;

TTcorner();

module TTcorner(){    
rotate([0,0,90])
translate([-(xmountX/2)-((barX+(bmountGap*2))/2),0,-(1+boltD)])
 difference(){    
  difference(){    
  translate([(barX+(bmountGap*2))/2,0,0])
   cube([(xmountX/2)-((barX+(bmountGap*2))/2)+(boltD/2)+(cornerSQ+(cornerT*2))+((setNutH*2)+barX),cornerSQ+(cornerT*2),bmountZ]);    

//bar mount
translate([(xmountX/2)-((barX+(bmountGap*2))/2)+(boltD/2)+(cornerSQ+(cornerT*2)),0,(bmountZ/2)-(barZ/2)])
#cube([barX,cornerSQ+(cornerT*2),barZ]);

//set screw nut
hull(){
translate([(xmountX/2)-((barX+(bmountGap*2))/2)+(boltD/2)+(cornerSQ+(cornerT*2))+barX,(cornerSQ+(cornerT*2))/2,(bmountZ/2)])
rotate([90,0,90])
cylinder(d=setNutD, h=setNutH, $fn=6);
translate([(xmountX/2)-((barX+(bmountGap*2))/2)+(boltD/2)+(cornerSQ+(cornerT*2))+barX,0,(bmountZ/2)])
rotate([90,0,90])
cylinder(d=setNutD, h=setNutH, $fn=6);

} //end hull
//set screw hole
translate([(xmountX/2)-((barX+(bmountGap*2))/2)+(boltD/2)+(cornerSQ+(cornerT*2))+barX,(cornerSQ+(cornerT*2))/2,(bmountZ/2)])
rotate([90,0,90])
#cylinder(d=setBoltD, h=xmountY);


//square tubing hole
  translate([(xmountX/2)+(boltD/2)+((cornerSQ-(cornerSQr*2))/2),(cornerSQ-(cornerSQr*2))/2,bmountZ-1])
  mirror([0,0,1])    
  minkowski(){
   cube([cornerSQ-(cornerSQr*2),cornerSQ-(cornerSQr*2),bmountZ]);
   cylinder(r=cornerSQr, h=1);
  }//end minkoski

//corner bolt hole
  translate([(xmountX/2)+(boltD/2)+((cornerSQ-(cornerSQr*2))),(cornerSQ-(cornerSQr*2)),bmountZ-1])
   cylinder(d=cornerBoltOD, h=1);
  }//end difference

//upper attach hole
  translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),0,barZ+(brrOD/2)+(brrID/2)+(0.25)+(boltD/2)+(1+boltD)])
  rotate([-90,0,0])
   cylinder(d=boltD, h=(cornerSQ+(cornerT*2)));

//lower attach hole
  translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),0,(1+boltD)/2])
  rotate([-90,0,0])
   cylinder(d=boltD, h=(cornerSQ+(cornerT*2)));
  
 } //end difference
} //end TTcorner