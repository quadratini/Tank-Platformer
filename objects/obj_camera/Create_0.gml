/// @description Creates camera.
cam = view_camera[0];  // return camera that's created by default by gm.
follow = obj_player;   // follow will contain the id that we want camera to follow.
view_w_half = camera_get_view_width(cam) * 0.5;  // want center of camera to in middle, since default is top left corner.
view_h_half = camera_get_view_height(cam) * 0.5; // same as top comment.
xTo = xstart; // x coord we are moving to at any time.
yTo = ystart; // same as top comment.