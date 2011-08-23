use <bitbeam.scad>;

// TODO: make the 1x1 bitbeams precisely 5/16 square. Not the current 5/16in by 8mm.
for (x=[0:8*1+8:200]) {
	translate([x,0,0]) beam(1);
}

for (x=[0:8*2+8:550]) {
	translate([x,12*1,0]) beam(2);
}

for (x=[0:8*3+8:550]) {
	translate([x,12*2,0]) beam(3);
}

for (x=[0:8*5+8:550]) {
	translate([x,12*3,0]) beam(5);
}

for (x=[0:8*7+8:550]) {
	translate([x,12*4,0]) beam(7);
}

for (x=[0:8*9+8:500]) {
	translate([x,12*5,0]) beam(9);
}

for (x=[0:8*11+8:500]) {
	translate([x,12*6,0]) beam(11);
}

for (x=[0:8*13+8:500]) {
	translate([x,12*7,0]) beam(13);
}

for (x=[0:230:400]) {
	translate([x,12*8,0]) beam(27);
}

