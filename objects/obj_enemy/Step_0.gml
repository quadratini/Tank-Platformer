/// @description Insert description here
// You can write your code in this editor
if (hp <= 0) {
	instance_destroy();
	audio_play_sound(sound_explode, 1, false);
}
vsp = vsp + grv;

if (place_meeting(x+hsp, y, obj_wall)) {
	while (!place_meeting(x+sign(hsp), y, obj_wall)) {
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
if (place_meeting(x+hsp, y, obj_bedrock)) {
	while (!place_meeting(x+sign(hsp), y, obj_bedrock)) {
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp; 

if (place_meeting(x,y+vsp, obj_wall)) {
	while (!place_meeting(x,y+sign(vsp), obj_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
if (place_meeting(x,y+vsp, obj_bedrock)) {
	while (!place_meeting(x,y+sign(vsp), obj_bedrock)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 

/*if (!place_meeting(x,y+1,obj_wall)) {
	sprite_index = spr_enemy;
} else {
	sprite_index = spr_enemy;
}*/

if (hsp != 0) {
	image_xscale = -sign(hsp);
}

