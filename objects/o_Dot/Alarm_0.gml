/// @description Check for Matches
var dot1, dot2, dot3, dot4;

if(o_GameManager.state == "Wait")
{
//Check Horizontal Matches
dot1 = instance_position(x - width, y, o_Dot);
dot2 = instance_position(x + width, y, o_Dot);
if(column >1)
{
	if(instance_exists(dot1) && instance_exists(dot2)){
		if(dot1.sprite_index == id.sprite_index && dot2.sprite_index == id.sprite_index){
			id.image_alpha = .2;
			dot1.image_alpha = .2;
			dot2.image_alpha = .2;
		}
	}
}
dot3 = instance_position(x, y - width, o_Dot);
dot4 = instance_position(x, y + width, o_Dot);

if(row > 1)
{
	if(instance_exists(dot3) && instance_exists(dot4)){
		if(dot3.sprite_index == id.sprite_index && dot4.sprite_index == id.sprite_index){
			id.image_alpha = .2;
			dot3.image_alpha = .2;
			dot4.image_alpha = .2;
		}
	}
}
}

alarm[0] = 5;

