/// @description Refill the board

for(var i = 0; i < width; i ++){
	for(var j =0; j < height; j ++){
		var xPosition = i * offset + xStart;
		var yPosition = j * offset + yStart;
		if(!instance_position(xPosition, yPosition, o_Dot)){
			var dot = instance_create_layer(xPosition, yPosition - yOffset,"Instances", o_Dot);
			dot.column = i;
			dot.row = j;
		}
	}
}
state = "Wait";