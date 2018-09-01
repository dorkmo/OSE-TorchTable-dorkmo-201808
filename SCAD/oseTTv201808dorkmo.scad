include <TTvars.scad>;

use <TTbmount.scad>;
use <TTxmount.scad>;

TTbmount();
TTxmount();
translate([0,X2X,0])
mirror([0,1,0])
TTxmount();