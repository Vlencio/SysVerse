//Get Inputs
rightKey = keyboard_check( ord("D"))
leftKey = keyboard_check( ord("A"))

#region X Movent
//Direction
moveDir = rightKey - leftKey;

//Get xped
xsped = moveDir * moveSpd;

//sprite change
if (xsped != 0)
{
	//mirror the sprite based on vertical velocity
	image_xscale = sign(xsped);
	image_speed = 1;
	
} else {
	image_speed = 0;
}

if place_meeting(x + xsped, y, obj_wall)
{
	//Scoot Wall Precisely
	
	while !place_meeting(x + xsped, y, obj_wall)
	{
		x += _pixelCheck;
	}
	
	//Set Xsped to 0 to "collide"
	xsped = 0;
	image_speed = 0;
	image_index = 0;
}
	
x += xsped;
#endregion

#region Y Movement
//Check if has collision with ground
if (!place_meeting(x, y + 1, obj_wall)) {
	//put in fall mode
	ysped += grav;
	gCtt = false;
} else {
	//put in ground mode
	ysped = 0;
	gCtt = true;
}

//jumping
if (keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W")))
{
	//check if the player is on the ground
	if (gCtt)
	{
		//set the vertical speed to the jumpspeed
		ysped = jumpSpd;
	}
}

//vertical movement
if (!place_meeting(x, y + ysped, obj_wall))
{
	y += ysped;
	
} else {
	while (!place_meeting(x, y + sign(ysped), obj_wall))
	{
		y += sign(ysped);
	}
	
}
#endregion	

#region Ability
if ( keyboard_check_pressed( ord( "E" ) ) )
{
	if (!place_meeting(x + (moveDir * 20), y, obj_wall)) {
		
		invu = true;
		timer = 60;
		if (invu) {
			x += xsped * 10;
			timer -= 1;
			if (timer <= 0) { invu = false; }
		}
	}
}

#endregion

#region Enemy
if (invu) {
	timer -= 1;
	image_alpha = (timer mod 10 < 5) ? 0.5 : 1;
	if (timer <= 0) {
		invu = false;
	}
} else { image_alpha = 1; }

if (vida <= 0) { room_restart() }
#endregion

#region Armas

slot = noone;

if (keyboard_check_pressed( ord("Q"))) {

	if (slot == noone) {
		show_debug_message("Teste");
		slot = instance_create_layer(x + 5, y - 10, "Instances", obj_Espada)
		slot.dono = id;
		}
}
