
barX=0.25;
barZ=6;
barLY=108;
barLX=60;

angX=1.5;
angT=0.125;
angLY=barLY;
angLX=barLX;
angR=0.25;

boltD=0.5;   // 6mm
boltL=1.968504;    // 50mm

brrOD=0.875;
brrID=0.375;
brrT=0.28125;

sprOD=0.25;

bmountGap=0.125;
bmountbrrGap=0.125;

stepBoltD=0.11811024;  //3.0mm bolt diameter
stepBoltHD=0.22362205; //5.68mm head diameter
stepBoltHH=0.11811024;  //3.0mm head height
stepBoltX=1.22047244;   //31.0mm square from bolt center to center
stepBoltIn=0.15748031;  //4.0mm bolt depth into stepper
stepSeatD=0.86614173;    //22.0mm
stepSeatH=0.07874016;    //2.0mm
stepX=1.66535433;        //42.3mm stepper square face 
stepBoreD=0.2007874;     //5.1mm shaft bore
stepBoreL=0.94488189;    //24mm

pullP=1.253;       //OD of belt around pully GT2 20T ??
pullH=0;            //Height of pulley

$fn=36;

//calculated

Y2Y=barLX+0.5;
X2X=8; //distance between X rails

bmountX=barX+((brrOD+1)*2);
bmountY=X2X;
bmountZ=barZ+(1+boltD)+(brrOD/2)+(brrID/2)+(0.25)+boltD+(0.5);