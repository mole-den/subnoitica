local entity_id = GetUpdatedEntityID()
local x, y = EntityGetTransform( entity_id )

local radius = 10

local frag_seaglide = EntityGetInRadiusWithTag( x, y, radius, "frag_seaglide" )

for i,v in ipairs( frag_seaglide ) do
    --scan code, nyi
end