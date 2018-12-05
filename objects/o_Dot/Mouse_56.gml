/// @description Calculate Direction
if(isControlling){
	finaltouchPositionX = mouse_x;
	finalTouchPositionY = mouse_y;
	
	swipeDirection = point_direction(firstTouchPositionX, firstTouchPositionY, finaltouchPositionX, finalTouchPositionY);
	if((swipeDirection > 315 || swipeDirection <= 45) && column < o_GameManager.width - 1){
		//right swipe
		otherDot = instance_position(x + width, y, o_Dot);
		if(otherDot != noone){
			otherDot.previousColumn = otherDot.column;
			otherDot.previousRow = otherDot.row;
			previousColumn = column;
			previousRow = row;
			otherDot.column -= 1;
			column += 1;
		}
		
	} else if(swipeDirection > 45 && swipeDirection <= 135 && row > 0){
		//up swipe
		otherDot = instance_position(x, y - width, o_Dot);
		if(otherDot != noone){
			otherDot.previousColumn = otherDot.column;
			otherDot.previousRow = otherDot.row;
			previousColumn = column;
			previousRow = row;
			otherDot.row += 1;
			row -= 1;
		}
	} else if(swipeDirection > 135 && swipeDirection <= 225 && column > 0){
		//left swipe
		otherDot = instance_position(x - width, y, o_Dot);
		if(otherDot != noone){
			otherDot.previousColumn = otherDot.column;
			otherDot.previousRow = otherDot.row;
			previousColumn = column;
			previousRow = row;
			otherDot.column += 1;
			column -= 1;
		}
	} else if(swipeDirection > 225 && swipeDirection <= 315 && row < o_GameManager.height - 1){
		//down swipe
		otherDot = instance_position(x, y + width, o_Dot);
		if(otherDot != noone){
			otherDot.previousColumn = otherDot.column;
			otherDot.previousRow = otherDot.row;
			previousColumn = column;
			previousRow = row;
			otherDot.row -= 1;
			row += 1;
		}
	}
	isControlling = false;
	o_GameManager.alarm[2] = 5;
	alarm[1] = 15;
	//otherDot = noone;
}