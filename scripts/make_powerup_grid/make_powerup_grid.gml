
global.powerups = ds_grid_create(PowerupIndexes.Count, 1);

var f = open_csv("powerups.csv");
var current_line = 0;

while(not file_text_eof(f)) {
	var line = read_csv_line(f);
	
	if( ds_grid_height(global.powerups) <= current_line )
		ds_grid_resize(global.powerups, PowerupIndexes.Count, current_line+1);
	
	for(var i = 0; i < ds_list_size(line); i++)
	{
		var v = line[| i ];
		
		if( i == PowerupIndexes.Kind )
		{
			var k;
			
			switch(v) {
				case "class":		k = PowerupKinds.Class; break;
				case "weapon":		k = PowerupKinds.Weapon; break;
				case "equipement":  k = PowerupKinds.Equipement; break;
				case "powerup":		k = PowerupKinds.PowerUp; break;
			}
			
			ds_grid_set(global.powerups, i, current_line, k);
		}
		else if( i == PowerupIndexes.Rarity )
		{
			var r;
			
			switch(v) {
				case "garbage":		r = PowerupRarities.Garbage; break;
				case "common":		r = PowerupRarities.Common; break;
				case "uncommon":	r = PowerupRarities.Uncommon; break;
				case "rare":		r = PowerupRarities.Rare; break;
				case "unique":		r = PowerupRarities.Unique; break;
				case "legendary":	r = PowerupRarities.Legendary; break;
				case "mythical":	r = PowerupRarities.Mythical; break;
			}
			
			ds_grid_set(global.powerups, i, current_line, r);
		}
		else if( i == PowerupIndexes.Stackable )
		{
			var s;
			
			switch(v) {
				case "true":	s = true; break;
				case "false":	s = false; break;
			}
			
			ds_grid_set(global.powerups, i, current_line, s);
		}
		else if( i == PowerupIndexes.Sprite )
			ds_grid_set(global.powerups, i, current_line, asset_get_index(v));
		else if( i >= PowerupIndexes.StatsFirst ) 
			ds_grid_set(global.powerups, i, current_line, real(v));
		else
			ds_grid_set(global.powerups, i, current_line, v);
	}
	
	ds_list_destroy(line);
	current_line += 1;
}

show_debug_message("W: " + string(ds_grid_width(global.powerups)) + "; H: " + string(ds_grid_height(global.powerups)));
