
gml_pragma("global", "constants()");

/////////////////////////////////////////////////////////////////////
/// player default input
#macro PLAYER_DEFAULT_KEY_LEFT ord("Q")
#macro PLAYER_DEFAULT_KEY_RIGHT ord("D")
#macro PLAYER_DEFAULT_KEY_UP ord("Z")
#macro PLAYER_DEFAULT_KEY_DOWN ord("S")
#macro PLAYER_DEFAULT_KEY_INTERACT ord("E")

/// player base stats
#macro PLAYER_BASE_MAX_HEALTH 64
#macro PLAYER_BASE_HEALING_RECEIVED 2
#macro PLAYER_BASE_INVULNERABILITY_TIME 0.6
#macro PLAYER_BASE_MOVEMENT_SPEED 256
#macro PLAYER_BASE_FIRE_RATE 3
#macro PLAYER_BASE_FIRE_SPREAD 3
#macro PLAYER_BASE_DAMAGES 8

/// other
#macro PLAYER_FIRE_RECOIL_AMOUNT 8


/////////////////////////////////////////////////////////////////////
/// powerup 
enum PowerupIndexes {
	Name, Description, Sprite, 
	Kind, Rarity, Stackable, 
	
	HealthFactor, HealthOffset,
	HealingFactor, HealingOffset,
	InvulnerabilityFactor, InvulnerabilityOffset,
	MovementFactor, MovementOffset,
	FireRateFactor, FireRateOffset,
	FireSpreadFactor, FireSpreadOffset,
	DamagesFactor, DamagesOffset,
	BulletCountFactor, BulletCountOffset,
	
	StatsFirst = PowerupIndexes.HealthFactor,
	StatsLast = PowerupIndexes.BulletCountOffset,
	Count = PowerupIndexes.StatsLast+1
}

enum PowerupKinds {
//  1 max, 2 max,  3 max
	Class, Weapon, Equipement,
//  no max
	PowerUp
}

enum PowerupRarities {
//  % of not being garbage
	Garbage,
//  60%,	40%
	Common, Uncommon,
//  20%,  10%
	Rare, Unique, 
//  5%,		   2%
	Legendary, Mythical
}

#macro POWERUP_RARITY_GARBAGE_CHANCE 100
#macro POWERUP_RARITY_COMMON_CHANCE 60
#macro POWERUP_RARITY_UNCOMMON_CHANCE 40
#macro POWERUP_RARITY_RARE_CHANCE 20
#macro POWERUP_RARITY_UNIQUE_CHANCE 10
#macro POWERUP_RARITY_LEGENDARY_CHANCE 5
#macro POWERUP_RARITY_MYTHICAL_CHANCE 2


#macro POWERUP_ADDED 1
#macro POWERUP_NOT_STACKABLE 2
#macro POWERUP_CHOICE_NEEDED 3


/////////////////////////////////////////////////////////////////////
/// camera configuration
#macro CAM_VIEW_WIDTH (1920/4)
#macro CAM_VIEW_HEIGHT (1080/4)
#macro CAM_VIEW_SCALE 2
#macro CAM_DIST_FACTOR 0.3

/////////////////////////////////////////////////////////////////////
/// other
#macro COIN_COPPER 1
#macro COIN_SILVER 5
#macro COIN_GOLD 25


/////////////////////////////////////////////////////////////////////
/// globals
global.powerups = -1;
global.paused = false;

make_powerup_grid();