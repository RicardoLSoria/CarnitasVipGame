/// @description Dibujo de Cronometro
// Una vez destruidos todas las frutas, se crearan una nueva serie de frutas


draw_set_color(c_white);
draw_set_font(Font1);
draw_set_halign(fa_center);
tiempo = timer/60;
round(tiempo);
draw_text(50,63,string(tiempo));