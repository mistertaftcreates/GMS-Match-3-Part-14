var width = argument0;
var height = argument1;

for(var i = 0; i < width; i ++)
{
	for(var j = 0; j < height; j ++)
	{
		if(global.grid[i,j] != noone)
		{
			var current = global.grid[i,j];
			if(global.grid[i,j].column > 0 && global.grid[i,j].column < width - 1)
			{
				//Check left and right
				if(global.grid[i - 1, j] != noone && global.grid[i + 1, j] != noone)
				{
					if(global.grid[i - 1, j].sprite_index == current.sprite_index
					&& global.grid[i + 1, j].sprite_index == current.sprite_index)
					{
						global.grid[i - 1, j].image_alpha = 0.2;
						global.grid[i + 1, j].image_alpha = 0.2;
						current.image_alpha = 0.2;
					}
				}
			}
			if(global.grid[i,j].row > 0 && global.grid[i,j].row < height - 1)
			{
				//Check up and down
				if(global.grid[i, j - 1] != noone && global.grid[i, j + 1] != noone)
				{
					if(global.grid[i, j - 1].sprite_index == current.sprite_index
					&& global.grid[i, j + 1].sprite_index == current.sprite_index)
					{
						global.grid[i, j - 1].image_alpha = 0.2;
						global.grid[i, j + 1].image_alpha = 0.2;
						current.image_alpha = 0.2;
					}
				}
			}
		}
	}
}