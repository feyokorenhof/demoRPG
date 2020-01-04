/// @description Player Init

//Initialize variables
w_spd = 2;
n_spd = 3;
r_spd = 4;
spd = n_spd;
dialog = [];
dialog_line = 0;
listening = false;

//Scripts 
scripts = [
	[changeRoom, room_loon_l2],
	[],
	[],
	
];

//Add dialog
d_spawn_text =
add_dialog("zzzzz.", true, sPlayerH, true);
add_dialog("zzzzz..", true, sPlayerH, true);
add_dialog("zzzzz...", true, sPlayerH, true);
add_dialog("zz- huh? What time is it.", true, sPlayerH, true);
add_dialog("What! Twelve O'clock, I must hurry", false, sPlayerH, true);

d_tidy_room_text = 
add_dialog("I should clean my table first. I forgot to do it yesterday", false, sPlayerH, true);

d_inspect_dirty_table =
add_dialog("Eww... Spiderwebs!", true, sPlayerH, true);
add_dialog("It really needs a cleaning", true, sPlayerH, true);
add_dialog("I guess I will replace the candle too while I'm at it", false, sPlayerH, true, 0);

d_intro_text = 
add_dialog("I must go to Dr. Phils house to check up on him. I hope he is feeling better", false, sPlayerH, true);

d_inspect_furnace = 
add_dialog("It's nice and warm", false, sPlayerH, true);

d_inspect_brewery = 
add_dialog("I still don't know what this thing does", true, sPlayerH, true);
add_dialog("Oh well.. It looks pretty cool I guess", false, sPlayerH, true);

d_phill_go_upstairs_text = 
add_dialog("....", true, sAvatar, false);
add_dialog("Hello? Is anyone there?", true, sPlayerH, true);
add_dialog("No! Oh shit.. Caught me. Maybe I am here! Or not, who even knows anymore", true, sAvatar, false);
add_dialog("Dr. Phil? Is that you?", false, sPlayerH, true);

d_phill_not_here_text = 
add_dialog("Hello? Dr. Phill are you there?", true, sPlayerH, true);
add_dialog("Hm.. He is not here. Maybe he is upstairs.", false, sPlayerH, true);

d_phill_note_text = 
add_dialog("!!!", true, sPlayerH, true);
add_dialog("Th-that.. That's blood!", true, sPlayerH, true);
add_dialog("There is a note besides it...", true, sPlayerH, true);
add_dialog("Loon..", true, sNote, false);
add_dialog("There is a lot I haven't told you about", true, sNote, false);
add_dialog("I've been a guardian of this precious town since I was born", true, sNote, false);
add_dialog("?", true, sPlayerH, true); 
add_dialog("I've protected LooneyTown from evil demons and spirits for as long as I can remember", true, sNote, false);
add_dialog("W-what? Demons and spirits?", true, sPlayerH, true);
add_dialog("But now...", true, sNote, false);
add_dialog("They have grown stronger..", true, sNote, false);
add_dialog("One of those damn spirits even had the courage to bring me a visit", true, sNote, false);
add_dialog("I thought I scared him away but he got back and nearly shattered my spine", true, sNote, false);
add_dialog("I had to run to safety and get back to strength", true, sNote, false);
add_dialog("You can find me at 'Loons Fountain of Life", true, sNote, false);
add_dialog("Be careful Loon.. LooneyTown is not under my protection now..", true, sNote, false);
add_dialog("It will not take long until evil spirits will notice this too", true, sNote, false);
add_dialog("-Dr. Phill", false, sNote, false);

d_block_loon_house =
add_dialog("I should check up on Phill first!", false, sPlayerH, true);

d_block_loon_fountain =
add_dialog("The fountain is beautiful but I should check up on Phill first..", false, sPlayerH, true);

d_fall_rock_fountain = 
add_dialog("AAAAAH!", true, sPlayerH, true);
add_dialog("Fuck....", true, sPlayerH, true);
add_dialog("Stupid rocks.. Could have killed me", false, sPlayerH, true);

d_fountain_spawn_monster = 
add_dialog(".....", true, sAvatar, false);
add_dialog("H-huh?", true, sPlayerH, true);
add_dialog("Did I hear something?", false, sPlayerH, true);
