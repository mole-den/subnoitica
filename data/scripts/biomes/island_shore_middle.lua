-- default biome functions that get called if we can't find a a specific biome that works for us
CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xffb4a00a, "spawn_fish" )
RegisterSpawnFunction( 0xff9797e8, "spawn_fragments" )
RegisterSpawnFunction( 0xffff1f1a, "spawn_props" )

g_fish =
{
	total_prob = 0,
	
}

g_fragments =
{
	total_prob = 0,
	

}

g_props =
{
	
}

function init( x, y, w, h )
	LoadPixelScene( "data/biome_impl/island_shore_middle.png", "", x, y, "", true )
end

function spawn_fish(x, y)
	spawn(g_fish,x,y)
end

function spawn_fragments(x, y)
	spawn(g_fragments,x,y)
end

function spawn_props(x, y)
	spawn(g_props,x,y)
end
