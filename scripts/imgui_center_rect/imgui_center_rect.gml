/// @description
/// @param container_rect
/// @param containee_size

var parent = argument0;
var child = argument1;

var cx = parent[0] + parent[2]/2;
var cy = parent[1] + parent[3]/2;

return [
	cx - child[0]/2, cy - child[1]/2,
	child[0], child[1]
];