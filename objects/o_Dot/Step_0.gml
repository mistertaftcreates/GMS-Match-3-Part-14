/// @description Movement Code
targetX = column * width + o_GameManager.xStart;
targetY = row * width + o_GameManager.yStart;

if(point_distance(x, y, targetX, y)> tolerance){
	x = lerp(x, targetX, smoothing);
	if(global.grid[column, row] != id)
	{
		global.grid[column, row] = id;	
	}
}else{
	x = targetX;	
	
}

if(point_distance(x, y, x, targetY)> tolerance){
	y = lerp(y, targetY, smoothing);
	if(global.grid[column, row] != id)
	{
		global.grid[column, row] = id;	
	}
}else{
	y = targetY;	
}

if(image_alpha == .2 && o_GameManager.state == "Wait"){
	o_GameManager.state = "Destroy";	
}