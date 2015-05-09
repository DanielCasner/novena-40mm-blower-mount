fastnerRadius = 2;
wallThickness = 5;
peekSpacing = 30;
blowerSpacing = 35;
blowerHeight = 10;
bfRadius = 1.2;
color("blue") difference() {
    translate([-wallThickness, -wallThickness, 0]) {
        cube([(peekSpacing+wallThickness)*2, peekSpacing*1.5+12, blowerHeight]);
    }
    // Peek mounting holes
    translate([0, 0, blowerHeight*-0.5]) cylinder(r=fastnerRadius, h=blowerHeight*2);
    translate([peekSpacing*2, 0, blowerHeight*-0.5]) cylinder(r=fastnerRadius, h=blowerHeight*2);
    translate([peekSpacing*0.5, peekSpacing*1.5, blowerHeight*-0.5]) cylinder(r=fastnerRadius, h=blowerHeight*2);
    translate([peekSpacing*1.5, peekSpacing*1.5, blowerHeight*-0.5]) cylinder(r=fastnerRadius, h=blowerHeight*2);
    // Blower mounting holes
    translate([peekSpacing, 0, blowerHeight*-0.5]) cylinder(r=fastnerRadius, h=blowerHeight*2);
    translate([peekSpacing-blowerSpacing*sqrt(2)/2, blowerSpacing*sqrt(2)/2, blowerHeight*-0.5]) cylinder(r=bfRadius, h=blowerHeight*2);
    translate([peekSpacing+blowerSpacing*sqrt(2)/2, blowerSpacing*sqrt(2)/2, blowerHeight*-0.5]) cylinder(r=bfRadius, h=blowerHeight*2);
    translate([peekSpacing, blowerSpacing*sqrt(2), blowerHeight*-0.5]) cylinder(r=bfRadius, h=blowerHeight*2);
}