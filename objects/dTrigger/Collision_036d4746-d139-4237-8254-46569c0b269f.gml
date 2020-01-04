/// @description Start dialog on collison
if( room != oRoom )
{
	instance_destroy();
	return;
}

if( !triggered )
{
	start_dialog( oPlayer, text );
	triggered = true;
}

if( dRepeat )
{
	start_dialog( oPlayer, text );
	oPlayer.y += oPlayer.moveY * -1;
	oPlayer.x += oPlayer.moveX * -1;
}




