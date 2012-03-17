/* 
Copyright (c) 2012 Jason R. Huggins
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

use <arduino.scad>

beam_width = 7.9375;   // 5/16 inches

projection(cut=true) {
    difference(){

        // Base plate
        cube([8*9, beam_width * 9, 1]);
	
        // Bottom row
        for (x=[8 : 8 : beam_width * 10]) {
            translate([x-4, beam_width/2, -10])
            cylinder(r=2.4, h=20, $fn=25);
        }
	
        // Top row
        for (x=[8 : 8 : beam_width * 10]) {
            translate([x-4, (beam_width/2) + beam_width * 8, -10])
            cylinder(r=2.4, h=20, $fn=25);
	   }

        translate([17,60,0]) MountingHoles();
    }
}

// Uncomment next line if you want to see the entire board
//translate([17,60,2]) Arduino();