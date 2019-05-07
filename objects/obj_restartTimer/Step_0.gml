/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_player)) {
	restartTimer--;
}
if (restartTimer <= 0) {
	game_restart();
	restartTimer = 60;
}