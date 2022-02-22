-- default biome functions that get called if we can't find a a specific biome that works for us
CHEST_LEVEL = 3
dofile_once("data/scripts/director_helpers.lua")


RegisterSpawnFunction( 0xffffeedd, "init" )

function spawn_wands( x, y ) end

function init( x, y, w, h )
	--LoadPixelScene( "data/biome_impl/mountain/left_entrance_bottom.png", "", x, y + 512, "", true )
	--LoadPixelScene( "data/biome_impl/mountain/left_stub_edge.png", "", x, y + 512, "", true )
end
