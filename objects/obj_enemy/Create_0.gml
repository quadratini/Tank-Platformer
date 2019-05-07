/// @description Insert description here
// You can write your code in this editor
vsp = 0;
grv = 0.5; 
walksp = 2;
hsp = walksp;
hit = false;

hp = 2;
image_speed = 0;
image_index = 1;

if (hasGun) {
	mygun = instance_create_layer(x,y,"Barrel",obj_barrelE);
	with (mygun) {
		owner = other.id;
	}
} else {
	mygun = noone;
}