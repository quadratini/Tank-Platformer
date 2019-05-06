/// @description Insert description here
// You can write your code in this editor
with (other) {
	hp--;
	hitfrom = other.direction;
	if (hp > 0) {
		audio_play_sound(sound_hit, 1, false);
	}
}
instance_destroy();