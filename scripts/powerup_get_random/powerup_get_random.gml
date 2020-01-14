/// @description
/// @param min_rarity
/// @param max_rarity

var res = -1;

var l = powerup_get_all_with_rarity(argument0);
res = l[| irandom(ds_list_size(l) - 1)];
ds_list_destroy(l);

for( var rarity = argument0+1; rarity <= argument1; rarity++ ) {
	var change = false;
		
	switch(rarity) {
		case PowerupRarities.Common:	change = rnd_chance(POWERUP_RARITY_COMMON_CHANCE);		break;
		case PowerupRarities.Uncommon:	change = rnd_chance(POWERUP_RARITY_UNCOMMON_CHANCE);	break;
		case PowerupRarities.Rare:		change = rnd_chance(POWERUP_RARITY_RARE_CHANCE);		break;
		case PowerupRarities.Unique:	change = rnd_chance(POWERUP_RARITY_UNIQUE_CHANCE);		break;
		case PowerupRarities.Legendary:	change = rnd_chance(POWERUP_RARITY_LEGENDARY_CHANCE);	break;
		case PowerupRarities.Mythical:	change = rnd_chance(POWERUP_RARITY_MYTHICAL_CHANCE);	break;
	}
		
	if( change ) {
		l = powerup_get_all_with_rarity(rarity);
		res = l[| irandom(ds_list_size(l) - 1)];
		ds_list_destroy(l);
		break;
	}
}

return res;
