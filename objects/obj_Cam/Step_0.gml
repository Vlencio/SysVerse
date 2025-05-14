var destino_x = alvo.x - camera_get_view_width(view_camera[0]) / 2;
var destino_y = alvo.y - 32 - camera_get_view_height(view_camera[0]) / 2;

cam_x = lerp(cam_x, destino_x, suavidade);
cam_y = lerp(cam_y, destino_y, suavidade);

camera_set_view_pos(view_camera[0], cam_x, cam_y)