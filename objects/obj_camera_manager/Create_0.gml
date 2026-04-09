/// @description Configurar câmera mobile e viewport
scr_mobile_scaling();

// Pegar largura e altura da tela
var _w = display_get_width();
var _h = display_get_height();

// Configurar a câmera da sala atual
view_enabled = true;
view_visible[0] = true;
camera_set_view_size(view_camera[0], _w, _h);
camera_set_view_pos(view_camera[0], 0, 0);

// Redimensionar a superfície da aplicação
surface_resize(application_surface, _w, _h);
display_set_gui_size(_w, _h);
