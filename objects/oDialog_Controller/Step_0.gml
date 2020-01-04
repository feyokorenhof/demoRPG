/// @description Get out dialog lines

//Allow the user to advance when pressing a key
var next = false;
if( keyboard_check_pressed( vk_anykey )) next = true;

get_dialog( next );
