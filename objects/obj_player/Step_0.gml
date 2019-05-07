/// @description Insert description here
// You can write your code in this editor
if (hp <= 0) {
	with (obj_barrel) {
		instance_destroy();
	}
	instance_destroy();
}
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;
vsp = vsp + grv;  

if (!place_meeting(x, y + 1, obj_wall) && !place_meeting(x, y + 1, obj_bedrock)) {
	sprite_index = spr_playerj;
} else {
	sprite_index = spr_player1;
}

if (place_meeting(x,y+1,obj_wall)) && (key_jump) {
	vsp = -8;
}
if (place_meeting(x,y+1,obj_bedrock)) && (key_jump) {
	vsp = -8;
}

if (place_meeting(x+hsp, y, obj_wall)) {
	while (!place_meeting(x+sign(hsp), y, obj_wall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}
if (place_meeting(x+hsp, y, obj_bedrock)) {
	while (!place_meeting(x+sign(hsp), y, obj_bedrock)) {
		x = x + sign(hsp);
	}
	hsp = 0;
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
