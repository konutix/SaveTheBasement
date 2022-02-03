function rotateByAngleX(vecx, vecy, angle){
	var rad = degtorad(angle);
	return cos(rad) * vecx - sin(rad) * vecy;
}


function rotateByAngleY(vecx, vecy, angle){
	var rad = degtorad(angle);
	return sin(rad) * vecx + cos(rad) * vecy;
}