// Description: "Lego-compatible grid beam"
// Project home: http://bitbeam.org

// Each bitbeam is 5/16 inches wide. It's length is determined by the number of holes.
// Each hole is 8mm apart from each other
// The center of holes are about 4mm (technically 5/32 inches) way from each side of the beam.
// The holes are 4.8 mm in diameter.

beam_width = 7.9375;   // 5/16 inches

module beam(number_of_holes) {
    beam_length = number_of_holes * 8;
    projection(cut=true, center=true) {
        difference(){
            // Draw the beam
            translate([-4, -beam_width/2, 0])
            cube([beam_length, beam_width, 1]);
    
            // Cut the holes
             for (x=[4 : 8 : beam_length]) {
                 translate([x-4, 0, -1])
                 cylinder(r=2.4, h=3, $fn=30);
             }
        }
    }
}

beam(13);
