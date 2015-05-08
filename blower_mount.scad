wallThickness = 5;
peekSpacing = 30;
blowerHeight = 10;
translate([-wallThickness, -wallThickness, 0]) {
    cube([(peekSpacing+wallThickness)*2, (peekSpacing+wallThickness)*2, blowerHeight]);
}
