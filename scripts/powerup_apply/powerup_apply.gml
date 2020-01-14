/// @description
/// @param player
/// @param id

for(var i = PowerupIndexes.StatsFirst; i <= PowerupIndexes.StatsLast; i++ )
{
	var v = global.powerups[# i, argument1];
	
	switch(i) {
		case PowerupIndexes.HealthFactor:				argument0.max_health_factor *= v; break;
		case PowerupIndexes.HealthOffset:				argument0.max_health_offset += v; break;
		case PowerupIndexes.HealingFactor:				argument0.healing_received_factor *= v; break;
		case PowerupIndexes.HealingOffset:				argument0.healing_received_offset += v; break;
		case PowerupIndexes.InvulnerabilityFactor:		argument0.invulnerability_time_factor *= v; break;
		case PowerupIndexes.InvulnerabilityOffset:		argument0.invulnerability_time_offset += v; break;
		case PowerupIndexes.MovementFactor:				argument0.movement_speed_factor *= v; break;
		case PowerupIndexes.MovementOffset:				argument0.movement_speed_offset += v; break;
		case PowerupIndexes.FireRateFactor:				argument0.fire_rate_factor *= v; break;
		case PowerupIndexes.FireRateOffset:				argument0.fire_rate_offset += v; break;
		case PowerupIndexes.FireSpreadFactor:			argument0.fire_spread_factor *= v; break;
		case PowerupIndexes.FireSpreadOffset:			argument0.fire_spread_offset += v; break;
		case PowerupIndexes.DamagesFactor:				argument0.damages_factor *= v; break;
		case PowerupIndexes.DamagesOffset:				argument0.damages_offset += v; break;
		case PowerupIndexes.BulletCountFactor:			argument0.bullet_count_factor *= v; break;
		case PowerupIndexes.BulletCountOffset:			argument0.bullet_count_offset += v; break;
	}
}