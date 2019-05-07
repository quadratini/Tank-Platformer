/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_wall)) {
	with(instance_nearest(x, y, obj_wall)) {
		instance_destroy();
	}
	instance_destroy();
}
if (place_meeting(x,y,obj_bedrock)) {
	instance_destroy();
}
