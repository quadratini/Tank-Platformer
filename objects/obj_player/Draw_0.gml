/// @description Insert description here
// You can write your code in this editor
if !(hit) draw_self();

if (hit) {
	gpu_set_fog(true, c_red, 0, 0);
	draw_self();
	gpu_set_fog(false, c_red, 0, 0);
}