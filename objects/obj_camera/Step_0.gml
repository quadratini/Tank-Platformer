/// @description Update camera

//Update destination.
if (instance_exists(follow)) {  // if what we're following exists.
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) / 25;  // Allows camera to move smoothly instead of snapping to
                      // place.
y += (yTo - y) / 25;  // Same as top comment.


x = clamp(x, view_w_half, room_width - view_w_half); // Camera can't see out of room range.
y = clamp(y, view_h_half, room_height - view_h_half); // Same.

// Update camera view.
camera_set_view_pos(cam, x - view_w_half, y - view_h_half); // centers the camera on the followed object.

if (layer_exists("Mountains")) {
	layer_x("Mountains",x/2);
}

if (layer_exists("Trees")) {
	layer_x("Trees",x/4);
}