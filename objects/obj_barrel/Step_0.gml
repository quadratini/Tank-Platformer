/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;

bdist = 5;

image_angle = point_direction(x,y,mouse_x,mouse_y);

targetDirectionX = x - mouse_x;
targetDirectionY = y - mouse_y;
if (mouse_check_button(mb_left) && !audio_is_playing(sound_reload)) {
	audio_play_sound(sound_reload, 0, false);
}
if (mouse_check_button(mb_left)) {
	reload -= 1;
	if (reload < 0) {
		reload = audio_sound_length(sound_reload) * 60;
		with (instance_create_layer(x, y, "Bullets", obj_bullet)) {
			speed = 21;
			direction = other.image_angle;
			image_angle = direction;
			xoffset = dcos(-direction) * other.bdist;
			yoffset = dsin(-direction) * other.bdist;
			x += xoffset;
			y += yoffset;
			gravity = 0.7;
			audio_play_sound(sound0,1,false);
		}
	}
}