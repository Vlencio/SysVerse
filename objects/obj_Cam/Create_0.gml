alvo = obj_Player;
suavidade = .15;

zoom = 5;

var cam = view_camera[0];
var largura = display_get_width() / zoom;
var altura = display_get_height() / zoom;
camera_set_view_size(cam, largura, altura);

cam_x = alvo.x;
cam_y = alvo.y;
