/// @desc Initialize The Game

//Board Variables
width = 8;
height = 9;

//Piece Variables
offset = 18;
xStart = 27;
yStart = 387;
yOffset = 288;

//To control iterations
maxLoops = 0;

global.grid = s_CreateArray(width, height);

//ds_grid_set_region(global.board, 0, 0, width - 1, height - 1, noone);

for(var i = 0; i < width; i ++){
	for(var j = 0; j< height; j ++){
		//instance_create_layer(offset * i + xStart, offset * j + yStart, 0, o_BackgroundTile);
		var dot = instance_create_layer(offset * i + xStart, offset * j + yStart - yOffset, "Instances", o_Dot);
		global.grid[i,j] = dot;
		dot.column = i;
		dot.row = j;
		
		if(i > 1 && j > 1){
			//Check both left and up
			while((global.grid[i - 1, j].sprite_index == dot.sprite_index
				&& global.grid[i - 2, j].sprite_index == dot.sprite_index)
				|| (global.grid[i, j - 1].sprite_index == dot.sprite_index
				&& global.grid[i, j - 2].sprite_index == dot.sprite_index)
				&& maxLoops < 100){
				//Change the dot's image and increase the maxLoops
				dot.sprite_index = choose(s_BlueGem, s_GreenGem, s_OrangeGem, s_PurpleGem, s_RedGem, s_TealGem);
				maxLoops ++;
			}
		}else if(i > 1 && j < 2){
			//Check Left
			while((global.grid[i - 1, j].sprite_index == dot.sprite_index
				&& global.grid[i - 2, j].sprite_index == dot.sprite_index)
				&& maxLoops < 100){
				//Change the dot's image and increase the maxLoops
				dot.sprite_index = choose(s_BlueGem, s_GreenGem, s_OrangeGem, s_PurpleGem, s_RedGem, s_TealGem);
				maxLoops ++;
			}
		}else if(i < 2 && j > 1){
			//Check up	
			while((global.grid[i, j - 1].sprite_index == dot.sprite_index
				&& global.grid[i, j - 2].sprite_index == dot.sprite_index)
				&& maxLoops < 100){
				//Change the dot's image and increase the maxLoops
				dot.sprite_index = choose(s_BlueGem, s_GreenGem, s_OrangeGem, s_PurpleGem, s_RedGem, s_TealGem);
				maxLoops ++;
			}
		}
	}	
}


alarm[0] = 20;

state = "Fill";