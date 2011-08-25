// Description: "Lego-compatible grid beam"
// Project home: http://bitbeam.org

// Each bitbeam is 5/16 inches wide. It's length is determined by the number of holes.
// Each hole is 8mm apart from each other
// The center of holes are 4mm way from each side of the beam
// The holes are 4.8 mm in diameter.

beam_width = 7.9375;   // 5/16 inches

module beam(number_of_holes) {
    beam_length = number_of_holes * 8;
    projection(cut=true, center=true) {
        difference(){
            // Draw the beam
            cube([beam_length,beam_width,1]);
    
            // Cut the holes
             for (x=[40 : 80 : beam_length*10]) {
                 scale(.10)
                 translate([x,40,-1])
                 cylinder(r=24, h=3);
             }
        }
    }
}

beam(13);
