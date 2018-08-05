
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

$fn=36;

//calculated

Y2Y=barLX+0.5;
X2X=8; //distance between X rails

bmountX=barX+((brrOD+1)*2);
bmountY=X2X;
bmountZ=barZ+((1+boltD)*2);