include <TTvars.scad>;

TTcorner();

module TTcorner(){

difference(){    
difference(){    
cube([((bmountX-(barX+(bmountGap*2)))/2)+(cornerSQ+(cornerT*2)),cornerSQ+(cornerT*2),bmountZ]);    

//square tubing hole
translate([(-(cornerSQ-(cornerSQr*2))/2)+((bmountX-(barX+(bmountGap*2)))/2)+((cornerSQ+(cornerT*2))/2),(cornerSQ-(cornerSQr*2))/2,bmountZ-1])
mirror([0,0,1])    
minkowski(){
    cube([cornerSQ-(cornerSQr*2),cornerSQ-(cornerSQr*2),bmountZ]);
    cylinder(r=cornerSQr, h=1);
}//end minkoski
//corner bolt hole
translate([(((cornerSQ-(cornerSQr*2))/2)-(cornerSQ-(cornerSQr*2))/2)+((bmountX-(barX+(bmountGap*2)))/2)+((cornerSQ+(cornerT*2))/2),(cornerSQ-(cornerSQr*2)),bmountZ-1])
cylinder(d=cornerBoltOD, h=1);

}//end difference


//lower attach hole
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),-(angX+0.75),(1+boltD)])
rotate([-90,0,0])
    #cylinder(d=boltD, h=(cornerSQ+(cornerT*2)));
//upper attach hole
translate([bmountX-(((bmountX-(barX+(bmountGap*2)))/2)/2)-(bmountX/2),-(angX+0.75),barZ+(brrOD/2)+(brrID/2)+(0.25)+(boltD/2)])
rotate([-90,0,0])
    #cylinder(d=boltD, h=(cornerSQ+(cornerT*2)));


    
    

} //end difference
} //end TTcorner