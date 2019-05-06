/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;

bdist = 5;

image_angle = point_direction(x,y,mouse_x,mouse_y);

targetDirectionX = x - mouse_x;
targetDirectionY = y - mouse_y;

firingdelay -= 1; //reduce this delay until it finally hits 0

if (mouse_check_button(mb_left) && (firingdelay < 0) && !audio_is_playing(sound_reload)) {
	audio_play_sound(sound_reload, 1, false);
	firingdelay =  5;  //4 frames after our last bullet was created
	with (instance_create_layer(x, y, "Bullets", obj_bullet)) {
		speed = 20;
		direction = other.image_angle;
		image_angle = direction;
		xoffset = dcos(-direction) * other.bdist;
		yoffset = dsin(-direction) * other.bdist;
		x += xoffset;
		y += yoffset;
		gravity = 0.6;
		audio_play_sound(sound0,1,false);
	}
}