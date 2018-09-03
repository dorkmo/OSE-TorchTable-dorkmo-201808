include <TTvars.scad>;

TTxmount();

//need to add stepper motor mounting holes or idler


module TTxmount(){
translate([(barX+(bmountGap*2))/2,-(angX+0.75),-(1+boltD)]){    
difference(){
cube([((bmountX-(barX+(bmountGap*2)))/2),angX+0.75,bmountZ]);    
//main flat bar cutout
    translate([0,(angX+0.75)-barX,(1+boltD)])
cube([((bmountX-(barX+(bmountGap*2)))/2),barX,barZ]);

//angle iron
translate([0,0.75-barX,(1+boltD)])
difference(){
    cube([((bmountX-(barX+(bmountGap*2)))/2),angX,angX]);
    translate([0,-angT,angT])
    cube([((bmountX-(barX+(bmountGap*2)))/2),angX,angX]);
}
translate([(((barX+(bmountGap*2)))/2)+0.5,-barX-angX,0])
translate([0,angX-angR-angT,angT])
difference(){
cube([((bmountX-(barX+(bmountGap*2)))/2)-0.5,angR,angR]);
    translate([0,0,angR])
    rotate([0,90,0])
    cylinder(r=angR,h=((bmountX-(barX+(bmountGap*2)))/2)-0.5,$fn=36);

} //end difference    

translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),-(angX+0.75),-(1+boltD)/2])
rotate([-90,0,0])
    cylinder(d=boltD, h=(angX+0.75));
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),-(angX+0.75),barZ+(brrOD/2)+(brrID/2)+(0.25)+(boltD/2)])
rotate([-90,0,0])
    cylinder(d=boltD, h=(angX+0.75));
    
//stepper

//bore
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),-(angX+0.75),barZ/2])
rotate([270,0,0])
cylinder(d=stepBoreD,h=angX+0.75);

//translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),-(angX+0.75),barZ/2])
//rotate([270,0,0])
//cylinder(d=pullP,h=angX+0.75);

translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),-(angX+0.75),barZ/2])
rotate([270,0,0])
cylinder(d=stepSeatD,h=stepSeatH);

translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2)+(stepBoltX/2),-(angX+0.75),(barZ/2)+(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=angX+0.75);
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2)-(stepBoltX/2),-(angX+0.75),(barZ/2)+(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=angX+0.75);
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2)+(stepBoltX/2),-(angX+0.75),(barZ/2)-(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=angX+0.75);
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2)-(stepBoltX/2),-(angX+0.75),(barZ/2)-(stepBoltX/2)])
rotate([270,0,0])
cylinder(d=stepBoltD,h=angX+0.75);


} //end difference
} //end translate
} //end TTxmount