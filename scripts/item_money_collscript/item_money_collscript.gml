
obj_player.money += amount;
spawn_damage_indicator(x, y, string(round(amount)), c_yellow);

instance_destroy(id);