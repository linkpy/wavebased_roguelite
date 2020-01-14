/// @description
/// @param id

var r = powerup_get_rarity(argument0)

switch(r) {
	case PowerupRarities.Garbage:		return spr_powerup_garbage_bg;	
	case PowerupRarities.Common:		return spr_powerup_common_bg;
	case PowerupRarities.Uncommon:		return spr_powerup_uncommon_bg;
	case PowerupRarities.Rare:			return spr_powerup_rare_bg;
	case PowerupRarities.Unique:		return spr_powerup_unique_bg;
	case PowerupRarities.Legendary:		return spr_powerup_legendary_bg;
	case PowerupRarities.Mythical:		return spr_powerup_mythical_bg;
}