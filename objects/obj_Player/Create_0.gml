#region Moving
moveDir = 0;
moveSpd = 2;
#endregion

#region Jumping
ysped = 0;
grav = .275;
termVel = 4;
jumpSpd = -5; 
gCtt = false;
#endregion

#region Life
vida = 3;
timer = 0;
invu = false;

#endregion

#region Enemy

function tomar_dano(valor, origem) {
	if (!invu) {
		vida -= valor;
		invu = true;
		timer = 60;
	}
}

	
#endregion