include <TTvars.scad>;

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
    cylinder(d=boltD, h=xmountY);
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2)-((barX/2)+bmountGap),0,barZ+(brrOD/2)+(brrID/2)+(0.25)+(boltD/2)+(1+boltD)])
rotate([-90,0,0])
    cylinder(d=boltD, h=xmountY);
    
///////stepper

//pully hole
translate([xmountX/2,xmountY-barX-(barX/2)-bmountGap-(bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2)-((barX/2)+bmountGap)),barZ/2])
cube([xmountX,pullH+pullS,pullP+pullS], center=true);


translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),0,barZ/2]){
////bore
translate([0,0,0])
rotate([270,0,0])
cylinder(d=stepBoreD,h=xmountY);


//translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),-(angX+0.75),barZ/2])
    
//cylinder(d=pullP,h=angX+0.75);

////seat
translate([0,0,0])
rotate([270,0,0])
cylinder(d=stepSeatD,h=stepSeatH);

////setpper mount holes
translate([(stepBoltX/2),0,(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=xmountY);
translate([-(stepBoltX/2),0,(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=xmountY);
translate([(stepBoltX/2),0,-(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=xmountY);
translate([-(stepBoltX/2),0,-(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=xmountY);
}

} //end difference
} //end translate
} //end TTxmount