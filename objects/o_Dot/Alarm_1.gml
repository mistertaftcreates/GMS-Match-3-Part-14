/// @description Move pieces back if necessary

if(instance_exists(otherDot)){
	if(id.image_alpha > .2 && otherDot.image_alpha > .2){
		column = previousColumn;
		row = previousRow;
		otherDot.column = otherDot.previousColumn;
		otherDot.row = otherDot.previousRow;
	}
	
}