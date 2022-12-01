/// @description Giro de la rueda en base a bandera
// You can write your code in this editor


if(girar == true)
{
	image_angle += 8;  // "velocidad" de giro de la rueda
	angulo = image_angle;
	//show_debug_message(angulo);
	if(image_angle>360)
	{
		image_angle = 0;
	}
}

if(contador_cambio == 2)
{
	contador_cambio = 0;
	if(angulo > 0 && angulo <= 30)
	{
		//show_debug_message("Juego 1");
		room_goto(Game1);
	}if(angulo > 30 && angulo <=60)
	{
		//show_debug_message("Juego 2");
		room_goto(Game1);
	}if(angulo > 60 && angulo <= 90)
	{
		//show_debug_message("Juego 3");
		room_goto(Game1);
	}if(angulo > 90 && angulo <= 120)
	{
		//show_debug_message("Juego 4");
		room_goto(Game1);
	}if(angulo > 120 && angulo <= 150)
	{
		//show_debug_message("Juego 5");
		room_goto(Game1);
	}if(angulo > 150 && angulo <= 180)
	{
		//show_debug_message("Juego 6");
		room_goto(Game1);
	}if(angulo > 180 && angulo <= 210)
	{
		//show_debug_message("Juego 7");
		room_goto(Game1);
	}if(angulo > 210 && angulo <= 240)
	{
		//show_debug_message("Juego 8");
		room_goto(Game1);
	}if(angulo > 240 && angulo <= 270)
	{
		//show_debug_message("Juego 9");
		room_goto(Game1);
	}if(angulo > 270 && angulo <= 300)
	{
		//show_debug_message("Juego 10");
		room_goto(Game1);
	}if(angulo > 300 && angulo <= 330)
	{
		//show_debug_message("Juego 11");
		room_goto(Game1);
	}if(angulo > 330 && angulo <= 360)
	{
		//show_debug_message("Juego 12");
		room_goto(Game1);
	}
}