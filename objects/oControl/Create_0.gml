/// @description Movimiento inicial de frutas
// Se crean los timers que mueven las frutas despues de un periodo de tiempo
tiempo = 0;
velocidadfruta = 6;
global.is_combination_done = false;
global.new_round = 0;

frutas = ds_list_create();

ds_list_add(frutas, oApple, oBanana, oMelon, oUva);

randomise();

var mover_fruta = function()
{
	var reps = (time_source_get_reps_completed(time_source)-1) % ds_list_size(frutas);
	//var val = reps % ds_list_size(frutas[0]);
	var frutas_assign = ds_list_find_value(frutas,reps);
	my_object(frutas_assign,reps);
}

my_object = function(_frutas_assign, _reps)
{
	_frutas_assign.movimiento = true;
}


time_source = time_source_create(time_source_global, .5, time_source_units_seconds, mover_fruta, [],4);

time_source_start(time_source);

timer = room_speed*120;

//CREAR TIMER PARA LA ACELERACION DE LAS FRUTAS 
