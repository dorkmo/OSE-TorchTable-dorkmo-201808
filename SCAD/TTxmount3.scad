include <TTvars.scad>;

rotate([0,90,0])
TTxmount();

//todo
//need to add stepper motor mounting holes or idler
///can stepper and idler be interchangeable?
//set screw hole and nut holder

module TTxmount(){
translate([(barX+(bmountGap*2))/2,-xmountY,-(1+boltD)]){    
    
difference(){
cube([xmountX,xmountY,bmountZ]);
    
//main flat bar cutout
    translate([0,xmountY-barX,(1+boltD)])
cube([xmountX,barX,barZ]);

//angle iron
translate([0,xmountY-angX-barX,(1+boltD)])
difference(){
    cube([xmountX,angX,angX]);
    translate([0,-angT,angT])
    cube([xmountX,angX,angX]);
}
translate([0,xmountY-barX-angX,(1+boltD)])
translate([0,angX-angR-angT,angT])
difference(){
cube([xmountX,angR,angR]);
    translate([0,0,angR])
    rotate([0,90,0])
    cylinder(r=angR,h=xmountX,$fn=36);
} //end difference    
//end angle iron

//main mounting holes
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2)-((barX/2)+bmountGap),0,(1+boltD)/2])
rotate([-90,0,0])
    cylinder(d=boltD, h=xmountY,$fn=360);
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2)-((barX/2)+bmountGap),0,barZ+(brrOD/2)+(brrID/2)+(0.25)+(boltD/2)+(1+boltD)])
rotate([-90,0,0])
    cylinder(d=boltD, h=xmountY,$fn=360);
    
//set screw nut
translate([xmountX/2,xmountY-barX,(((1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2))-(stepX/2))-((((1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)-(stepX/2))-((1+boltD)+angX))/2)])
rotate([90,0,0])
cylinder(d=setNutD, h=setNutH, $fn=6);
//set screw hole
translate([xmountX/2,xmountY,(((1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2))-(stepX/2))-((((1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)-(stepX/2))-((1+boltD)+angX))/2)])
rotate([90,0,0])
cylinder(d=setBoltD, h=xmountY,$fn=360);

//lower set screw nut
translate([xmountX/2,xmountY-barX,(((1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2))+(stepX/2))+((((1+boltD)+barZ)-((1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)+(stepX/2)))/2)])
rotate([90,0,0])
cylinder(d=setNutD, h=setNutH, $fn=6);
//set screw hole
translate([xmountX/2,xmountY,(((1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2))+(stepX/2))+((((1+boltD)+barZ)-((1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)+(stepX/2)))/2)])
rotate([90,0,0])
cylinder(d=setBoltD, h=xmountY,$fn=360);


///////stepper

//belt path
translate([xmountX/2,((xmountY-barX-bmountGap)/2),(1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)])
cube([xmountX,beltW+beltG,pullP+pullS], center=true);

//stepper face
translate([xmountX/2,((-barX-bmountGap)/2)+((beltW+beltG)/2)-stepBoreL,(1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)])
cube([xmountX,xmountY,stepX], center=true); // should X= xmountX or stepX?


////seat
translate([xmountX/2,((xmountY-barX-bmountGap)/2)+((beltW+beltG)/2)-stepBoreL,(1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)])
rotate([270,0,0])
cylinder(d=stepSeatD,h=stepSeatH,$fn=360);

////pully sprocket hole
translate([xmountX/2,((xmountY-barX-bmountGap)/2)+((beltW+beltG)/2)-stepBoreL,(1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)])
rotate([270,0,0])
cylinder(d=pullOD+pullG,h=stepBoreL+0.03937,$fn=360);


translate([xmountX/2,0,(1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)]){

////bore
//translate([0,0,0])
//rotate([270,0,0])
//cylinder(d=stepBoreD,h=xmountY); //need to tweak so that bolt for idler will fit in same hole


//translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),-(angX+0.75),barZ/2])    
//cylinder(d=pullP,h=angX+0.75);


////setpper mount holes
translate([(stepBoltX/2),0,(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=xmountY,$fn=360);
translate([-(stepBoltX/2),0,(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=xmountY,$fn=360);
translate([(stepBoltX/2),0,-(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=xmountY,$fn=360);
translate([-(stepBoltX/2),0,-(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=xmountY,$fn=360);
}

//need to calculate required socket cap screw length, divisible by 5mm
//head 3mm tall, depth into motor 4.5max, lock washer 1.1mm, extra space above head 1.0mm
translate([xmountX/2,((-barX-bmountGap)/2)+((beltW+beltG)/2)-stepBoreL+(xmountY/2)-stepBoltIn+stepBoltRL,(1+boltD)+((bmountZ-(1+boltD))/2)-((pullP+pullS)/2)]){

////socket cap screw head holes
translate([(stepBoltX/2),0,(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltHD,h=xmountY,$fn=360);
translate([-(stepBoltX/2),0,(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltHD,h=xmountY,$fn=360);
translate([(stepBoltX/2),0,-(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltHD,h=xmountY,$fn=360);
translate([-(stepBoltX/2),0,-(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltHD,h=xmountY,$fn=360);
}


} //end difference
} //end translate
} //end TTxmount