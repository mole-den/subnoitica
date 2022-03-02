-- default biome functions that get called if we can't find a a specific biome that works for us
CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")
dofile_once("data/scripts/biome_scripts.lua")

RegisterSpawnFunction( 0xffffeedd, "init" )
RegisterSpawnFunction( 0xffb4a00a, "spawn_fish" )
RegisterSpawnFunction( 0xff9797e8, "spawn_fragments" )
RegisterSpawnFunction( 0xffb4c072, "spawn_materials" )

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

	total_prob = 0,

	{
		prob = 0.8,
		min_count = 1,
		max_count = 1,
		entity = "data/vegetation/bulbo_tree.png"
	}
	
}

g_materials = 
{

	total_prob = 0,

	{
		prob   		= 0.8,
		min_count	= 1,
		max_count	= 1,   
		entity 	= "data/entities/materials/titanium.xml"
	},

	{
		prob   		= 0.15,
		min_count	= 1,
		max_count	= 1,   
		entity 	= "data/entities/materials/gold.xml"
	},

	{
		prob   		= 0.05,
		min_count	= 1,
		max_count	= 1,   
		entity 	= "data/entities/materials/uranium.xml"
	}

}

function init( x, y, w, h )
end

function spawn_fish(x, y)
	spawn(g_fish,x,y)
end

function spawn_fragments(x, y)
	spawn(g_fragments,x,y)
end

function spawn_materials(x, y)
	spawn(g_materials,x,y)
	spawn(g_props,x,y)
end
