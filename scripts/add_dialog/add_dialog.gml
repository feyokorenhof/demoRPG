//@description Add lines of dialog to the dialog array
//@param Dialog
//@param Continue
//@param Avatar
//@param Left_Facing
//@param Script

//Check user input and set up default values if needed
var dialog_part = [];
var dialog_text = "";			if( argument_count >= 1 ) dialog_text = argument[0];
var dialog_continue = false;	if(	argument_count >= 2	) dialog_continue = argument[1];
var dialog_avatar = "";			if(	argument_count >= 3	) dialog_avatar = argument[2];
var dialog_left_facing = true;	if( argument_count >= 4 ) dialog_left_facing = argument[3];
var dialog_script = -1;			if( argument_count >= 5 ) dialog_script = argument[4];

//Save values to array
dialog_part[0] = dialog_text; //Text to display
dialog_part[1] = dialog_continue; //Do we continue onto the next item or not?
dialog_part[2] = dialog_avatar; //Image to display
dialog_part[3] = dialog_left_facing; //Should the avatar be displayed on the left or the right
dialog_part[4] = dialog_script; //Should a script be ran after this part?

//Save array to dialog
dialog[dialog_line] = dialog_part;
dialog_line++;
return dialog_line - 1;