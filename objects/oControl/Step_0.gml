/// @description Movimiento de Carnitas/Katana
// You can write your code in this editor

oKatana.image_index = 0;
oCortes.image_index = 0;

if(keyboard_check(ord("A")))
{
	//oKatana.x = 128;
	oKatana.image_index = 1;
	oCortes.image_index = 1;
}

if(keyboard_check(ord("S")))
{
	//oKatana.x = 384;
	oKatana.image_index = 2;
	oCortes.image_index = 2;
}

if(keyboard_check(ord("D")))
{
	//oKatana.x = 640;
	oKatana.image_index = 3;
	oCortes.image_index = 3;
}

if(keyboard_check(ord("F")))
{
	//oKatana.x = 928;
	oKatana.image_index = 4;
	oCortes.image_index = 4;
}

timer -= 1;


if(keyboard_check(ord("R")))
{
	game_restart();
}

if(tiempo == 90)
{
	velocidadfruta = 9;
}

if(tiempo == 60)
{
	velocidadfruta = 12;
}
if(tiempo == 30)
{
	velocidadfruta = 15;
}



if (global.new_round == 4)//nueva ronda
{
	global.is_combination_done = true;
	global.new_round = 0;
}

else if (global.new_round == 0)
{
	global.is_combination_done = false;
}

if(global.is_combination_done)
{
	ds_list_shuffle(frutas);
	for(var i = 0; i < ds_list_size(frutas); i++)
	{
		show_debug_message(ds_list_find_value(frutas,i));
	}
	time_source_start(time_source);
}