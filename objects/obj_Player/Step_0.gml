//Get Inputs
rightKey = keyboard_check( vk_right )
leftKey = keyboard_check( vk_left )
jumpKey = keyboard_check( vk_up )

//X Movent
//Direction
moveDir = rightKey - leftKey;

//Get xped
xsped = moveDir * moveSpd;

//X colision
var _subPixel = .5;

if place_meeting(x + xsped, y, obj_wall)
{
	//Scoot Wall Precisely
	var _pixelCheck = _subPixel * sign(xsped);
	while !place_meeting(x + _pixelCheck, y, obj_wall)
	{
		x += _pixelCheck;
	}
	
	//Set Xsped to 0 to "collide"
	xsped = 0;
}
	
x += xsped;

with (obj_Player) {
	if (x < 0) {
		sprite_index = sprPlayer_left;
	} else if (x > 0) {
		sprite_index = sprPlayer_right;	
	}
}

//Y Movement
ysped += grav

if place_meeting(x, y + ysped, obj_wall)
{
	var _pixelCheck = _subPixel * sign(ysped);
	while !place_meeting(x, y + _pixelCheck, obj_wall)
	{
		y += _pixelCheck;
	}
	ysped = 0;
}	

y += ysped;

	
	
 





