/// @description Destroy Matched pieces, and collapse columns
with(o_Dot){
	if(image_alpha == .2){
		with(o_Dot){
			if(column == other.column && row < other.row){
				row ++;	
			}
		}
		instance_destroy();
	}
}
state = "Fill";
alarm[1] = 30;