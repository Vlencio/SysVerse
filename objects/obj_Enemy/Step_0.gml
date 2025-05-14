#region Movement
x += vel * direcao;
#endregion

#region Limits
var colision = place_meeting(x + direcao * 4, y, obj_wall)

if (x = room_width - sprite_width or x = 0 )
{
	direcao *= -1
}

if (colision)
{
	direcao *= -1;
}

#endregion

if (place_meeting(x, y, obj_Player)) {
	with (obj_Player) {
		tomar_dano(1, other)
	}
}


