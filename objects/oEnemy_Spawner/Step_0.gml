if (global.current_state == game_state.COMBAT)
{ if (enemies_spawned < enemies_to_spawn)
{
    spawn_timer++;

    if (spawn_timer >= spawn_delay)
    {
        spawn_timer = 0;

        var spawn_x = choose(0, room_width);
        var spawn_y = irandom(room_height);
		var sp = instance_find(oEnemySpawn, irandom(instance_number(oEnemySpawn) - 1));

		instance_create_layer(sp.x, sp.y, "Instances", oFollowEnemy);

        enemies_spawned++;
    }
}
else
{
    if (instance_number(oFollowEnemy) == 0)
    {
        wave++;
        enemies_to_spawn += 3;
		spawn_delay *= 0.9;
        enemies_spawned = 0;
		global.current_state = game_state.INTERMISSION
    }
}
}