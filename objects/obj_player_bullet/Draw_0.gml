// @description

draw_self();

for(var i = 0; i < ds_list_size(trail_x); i++)
{
	var sc = (i / trail_limit) * 0.5 + 0.5;
	
	draw_sprite_ext(
		spr_player_bullet, 0,
		trail_x[|i], trail_y[|i],
		sc, sc, 0, 
		c_white, i/trail_limit
	);	
	
	if( i + 1 < ds_list_size(trail_x) ) 
	{
		sc = ((i + 0.5) / trail_limit) * 0.5 + 0.5;
		
		var xx = (trail_x[|i] + trail_x[|i+1]) / 2;
		var yy = (trail_y[|i] + trail_y[|i+1]) / 2;
		
		draw_sprite_ext(
			spr_player_bullet, 0,
			xx, yy,
			sc, sc, 0,
			c_white, (i+0.5)/trail_limit
		);
	}
}