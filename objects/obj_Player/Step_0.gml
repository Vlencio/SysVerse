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


//Y Movement
 ysped += grav
 
 if ysped > termVel { ysped = termVel; }
 
 




