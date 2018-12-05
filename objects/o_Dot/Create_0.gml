///@description Initialize Variables
randomize();
//Image Variables
image_speed = 1;
shineDelay = random_range(3, 6);
shineCounter = shineDelay * room_speed;
//image_index = irandom(8);
sprite_index = choose(s_BlueGem, s_GreenGem, s_OrangeGem, s_PurpleGem, s_RedGem, s_TealGem);
depth = -y;


//Position variables
width = 18;

column = (x - o_GameManager.xStart)/width;
row = (y - o_GameManager.yStart)/width;
previousColumn = column;
previousRow = row;



// Movement Varaibles
targetX = column * width + o_GameManager.xStart;
targetY = row * width + o_GameManager.yStart;

smoothing = .6;
tolerance = 2;

firstTouchPositionX = x;
firstTouchPositionY = y;
finaltouchPositionX = x;
finalTouchPositionY = y;

swipeDirection = noone;

isControlling = false;

otherDot = noone;

//alarm[0] = 5;
alarm[2] = shineCounter;