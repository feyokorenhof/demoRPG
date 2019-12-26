/// @description Player Controls

input_left = keyboard_check(ord("A"));
input_right = keyboard_check(ord("D"));
input_up = keyboard_check(ord("W"));
input_down = keyboard_check(ord("S"));
input_walk = keyboard_check(vk_control);
input_run = keyboard_check(vk_shift);

//Alter speed
if(input_walk || input_run)
{
	spd = abs((input_walk * w_spd) - (input_run * r_spd));
} else{
	spd = n_spd;
}

//Reset move variables
moveX = 0;
moveY = 0;

//Intended movement (if removes diagonal movement)
moveX = (input_right - input_left) * spd;
if (moveX == 0){ moveY = (input_down - input_up) * spd; }

//Collision checks
//Horizontal
if(moveX != 0){
	if(place_meeting(x + moveX,y,oCollision))
	{
		repeat(abs(moveX)){
			if(!place_meeting(x + sign(moveX), y, oCollision)){	x += sign(moveX); } 
			else{	break; }
		}
		moveX = 0;
	}
}

//Vertical
if(moveY != 0){
	if(place_meeting(x,y + moveY,oCollision))
	{
		repeat(abs(moveY)){
			if(!place_meeting(x, y + sign(moveY), oCollision)){	y += sign(moveY); } 
			else{	break; }
		}
		moveY = 0;
	}
}
//Apply movement
x += moveX;
y += moveY;
