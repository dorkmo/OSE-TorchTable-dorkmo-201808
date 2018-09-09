
$fn=8; //default 36

//flat bar
barX=0.25;
barZ=6;
barLY=108;
barLX=60;

//angle iron
angX=1.5;
angT=0.125;
angLY=barLY;
angLX=barLX;
angR=0.25;

//square tubing
cornerSQ=1.5; //size of square tubing in corners
cornerSQr=0.125; //radius of square tubing 90s
cornerT=0.5; //thickness of corner mount walls
cornerBoltOD=0.5;


boltD=0.5;      //main mounting bolt diameter
boltL=1.968504;  

setBoltD=0.5;   //thead size  1/2-20
setNutH=0.448;  //length of threaded dimension
setNutD=0.75;   //from flat side to flat side

brrOD=0.875;
brrID=0.375;
brrT=0.28125;

sprOD=0.25; //spring? i dont remember wha this is

bmountGap=0.125;
bmountbrrGap=0.125;

//stepper
stepBoltD=0.11811024;  //3.0mm bolt diameter
stepBoltHD=0.22362205; //5.68mm head diameter
stepBoltHH=0.11811024;  //3.0mm head height
stepBoltX=1.22047244;   //31.0mm square from bolt center to center
stepBoltIn=0.15748031;  //4.0mm bolt depth into stepper
stepSeatD=0.86614173;    //22.0mm
stepSeatH=0.07874016;    //2.0mm
stepX=1.66535433;        //42.3mm stepper square face 
stepBoreD=0.2007874;     //5.1mm shaft bore
stepBoreL=0.787402;    //20mm

//pully
pullP=1.253;       //OD of belt around pully GT2 20T ??
pullH=0.25;            //Height of pulley ?????
pullS=0.125;           //pully space

//calculated

Y2Y=barLX+0.0;
Y2YA=Y2Y+(((((barX+(bmountGap*2)))/2)+0.5)*2); //center to center barL
X2X=8; //distance between X rails

bmountX=max((barX+(bmountGap*2)+(stepX*2)),(barX+((brrOD+1)*2)));
// max(barX+(bmountGap*2)+(stepX*2),barX+((brrOD+1)*2))
bmountY=X2X;
bmountZ=barZ+(1+boltD)+(brrOD/2)+(brrID/2)+(0.25)+boltD+(0.5);

xmountX=((bmountX-(barX+(bmountGap*2)))/2)+0;
xmountY=angX+barX+1.0;