
barX=0.25;
barZ=6;
barLY=108;
barLX=60;

angX=1.5;
angT=0.125;
angLY=barLY;
angLX=barLX;

boltD=0.2362205;   // 6mm
boltL=1.968504;    // 50mm

brrOD=1;
brrID=0.25;
brrT=0.25;

sprOD=0.25;

bmountGap=0.1875;
bmountbrrGap=0.125;

//calculated

Y2Y=barLX+0.5;
X2X=8; //distance between X rails

bmountX=barX+((brrOD+1)*2);
bmountY=X2X;
bmountZ=barZ+bmountGap+brrOD-0.25+(1+boltD);