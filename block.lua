local block={}

local function Block(id,meta)
	if meta == nil then meta=0 end
	return meta * 0x1000 + id
end

local function unBlock(value)
	return value % 0x1000, math.floor(value / 0x1000)
end

block.AIR                =Block(0)
block.STONE              =Block(1)
block.GRASS              =Block(2)
block.DIRT               =Block(3)
block.COBBLESTONE        =Block(4)
block.WOOD_PLANKS        =Block(5)
block.SAPLING            =Block(6)
block.BEDROCK            =Block(7)
block.WATER_FLOWING      =Block(8)
block.WATER_STATIONARY   =Block(9)
block.LAVA_FLOWING       =Block(10)
block.LAVA_STATIONARY    =Block(11)
block.SAND               =Block(12)
block.GRAVEL             =Block(13)
block.GOLD_ORE           =Block(14)
block.IRON_ORE           =Block(15)
block.COAL_ORE           =Block(16)
block.WOOD               =Block(17)
block.WOOD2              =Block(162)
block.LEAVES             =Block(18)
block.GLASS              =Block(20)
block.LAPIS_LAZULI_ORE   =Block(21)
block.LAPIS_LAZULI_BLOCK =Block(22)
block.SANDSTONE          =Block(24)
block.BED                =Block(26)
block.COBWEB             =Block(30)
block.GRASS_TALL         =Block(31)
block.WOOL               =Block(35)
block.FLOWER_YELLOW      =Block(37)
block.FLOWER_CYAN        =Block(38)
block.MUSHROOM_BROWN     =Block(39)
block.MUSHROOM_RED       =Block(40)
block.GOLD_BLOCK         =Block(41)
block.IRON_BLOCK         =Block(42)
block.STONE_SLAB_DOUBLE  =Block(43)
block.STONE_SLAB         =Block(44)
block.BRICK_BLOCK        =Block(45)
block.TNT                =Block(46)
block.BOOKSHELF          =Block(47)
block.MOSS_STONE         =Block(48)
block.OBSIDIAN           =Block(49)
block.TORCH              =Block(50)
block.FIRE               =Block(51)
block.STAIR_WOOD        =Block(53)
block.CHEST              =Block(54)
block.DIAMOND_ORE        =Block(56)
block.DIAMOND_BLOCK      =Block(57)
block.CRAFTING_TABLE     =Block(58)
block.FARMLAND           =Block(60)
block.FURNACE_INACTIVE   =Block(61)
block.FURNACE_ACTIVE     =Block(62)
block.DOOR_WOOD          =Block(64)
block.LADDER             =Block(65)
block.STAIR_COBBLESTONE =Block(67)
block.DOOR_IRON          =Block(71)
block.REDSTONE_ORE       =Block(73)
block.STONE_BUTTON       =Block(77)
block.SNOW               =Block(78)
block.ICE                =Block(79)
block.SNOW_BLOCK         =Block(80)
block.CACTUS             =Block(81)
block.CLAY               =Block(82)
block.SUGAR_CANE         =Block(83)
block.FENCE              =Block(85)
block.GLOWSTONE_BLOCK    =Block(89)
block.BEDROCK_INVISIBLE  =Block(95)
block.STAINED_GLASS=      Block(95)
block.TRAPDOOR           =Block(96)
block.IRON_TRAPDOOR      =Block(167)
block.STONE_BRICK        =Block(98)
block.GLASS_PANE         =Block(102)
block.MELON              =Block(103)
block.FENCE_GATE         =Block(107)
block.WATERLILY          =Block(111)
block.WOOD_SLAB_DOUBLE   =Block(125)
block.WOOD_SLAB          =Block(126)
block.WOOD_BUTTON        =Block(143)
block.REDSTONE_BLOCK     =Block(152)
block.QUARTZ_BLOCK       =Block(155)
block.HARDENED_CLAY_STAINED=Block(159)
block.SEA_LANTERN        =Block(169)
block.CARPET             =Block(171)
block.COAL_BLOCK         =Block(173)
block.REDSTONE_LAMP_INACTIVE=Block(123)
block.REDSTONE_LAMP_ACTIVE  =Block(124)
block.SUNFLOWER =Block(175,0)
block.LILAC     =Block(175,1)
block.DOUBLE_TALLGRASS=Block(175,2)
block.LARGE_FERN      =Block(175,3)
block.ROSE_BUSH       =Block(175,4)
block.PEONY           =Block(175,5)
block.WOOL_WHITE=Block(block.WOOL, 0)
block.WOOL_ORANGE=Block(block.WOOL, 1)
block.WOOL_MAGENTA=Block(block.WOOL, 2)
block.WOOL_LIGHT_BLUE=Block(block.WOOL, 3)
block.WOOL_YELLOW=Block(block.WOOL, 4)
block.WOOL_LIME=Block(block.WOOL, 5)
block.WOOL_PINK=Block(block.WOOL, 6)
block.WOOL_GRAY=Block(block.WOOL, 7)
block.WOOL_LIGHT_GRAY=Block(block.WOOL, 8)
block.WOOL_CYAN=Block(block.WOOL, 9)
block.WOOL_PURPLE=Block(block.WOOL, 10)
block.WOOL_BLUE=Block(block.WOOL, 11)
block.WOOL_BROWN=Block(block.WOOL, 12)
block.WOOL_GREEN=Block(block.WOOL, 13)
block.WOOL_RED=Block(block.WOOL, 14)
block.WOOL_BLACK=Block(block.WOOL, 15)
block.CARPET_WHITE=Block(block.CARPET, 0)
block.CARPET_ORANGE=Block(block.CARPET, 1)
block.CARPET_MAGENTA=Block(block.CARPET, 2)
block.CARPET_LIGHT_BLUE=Block(block.CARPET, 3)
block.CARPET_YELLOW=Block(block.CARPET, 4)
block.CARPET_LIME=Block(block.CARPET, 5)
block.CARPET_PINK=Block(block.CARPET, 6)
block.CARPET_GRAY=Block(block.CARPET, 7)
block.CARPET_LIGHT_GRAY=Block(block.CARPET, 8)
block.CARPET_CYAN=Block(block.CARPET, 9)
block.CARPET_PURPLE=Block(block.CARPET, 10)
block.CARPET_BLUE=Block(block.CARPET, 11)
block.CARPET_BROWN=Block(block.CARPET, 12)
block.CARPET_GREEN=Block(block.CARPET, 13)
block.CARPET_RED=Block(block.CARPET, 14)
block.CARPET_BLACK=Block(block.CARPET, 15)
block.STAINED_GLASS_WHITE=Block(block.STAINED_GLASS, 0)
block.STAINED_GLASS_ORANGE=Block(block.STAINED_GLASS, 1)
block.STAINED_GLASS_MAGENTA=Block(block.STAINED_GLASS, 2)
block.STAINED_GLASS_LIGHT_BLUE=Block(block.STAINED_GLASS, 3)
block.STAINED_GLASS_YELLOW=Block(block.STAINED_GLASS, 4)
block.STAINED_GLASS_LIME=Block(block.STAINED_GLASS, 5)
block.STAINED_GLASS_PINK=Block(block.STAINED_GLASS, 6)
block.STAINED_GLASS_GRAY=Block(block.STAINED_GLASS, 7)
block.STAINED_GLASS_LIGHT_GRAY=Block(block.STAINED_GLASS, 8)
block.STAINED_GLASS_CYAN=Block(block.STAINED_GLASS, 9)
block.STAINED_GLASS_PURPLE=Block(block.STAINED_GLASS, 10)
block.STAINED_GLASS_BLUE=Block(block.STAINED_GLASS, 11)
block.STAINED_GLASS_BROWN=Block(block.STAINED_GLASS, 12)
block.STAINED_GLASS_GREEN=Block(block.STAINED_GLASS, 13)
block.STAINED_GLASS_RED=Block(block.STAINED_GLASS, 14)
block.STAINED_GLASS_BLACK=Block(block.STAINED_GLASS, 15)
block.HARDENED_CLAY_STAINED_WHITE=Block(block.HARDENED_CLAY_STAINED, 0)
block.HARDENED_CLAY_STAINED_ORANGE=Block(block.HARDENED_CLAY_STAINED, 1)
block.HARDENED_CLAY_STAINED_MAGENTA=Block(block.HARDENED_CLAY_STAINED, 2)
block.HARDENED_CLAY_STAINED_LIGHT_BLUE=Block(block.HARDENED_CLAY_STAINED, 3)
block.HARDENED_CLAY_STAINED_YELLOW=Block(block.HARDENED_CLAY_STAINED, 4)
block.HARDENED_CLAY_STAINED_LIME=Block(block.HARDENED_CLAY_STAINED, 5)
block.HARDENED_CLAY_STAINED_PINK=Block(block.HARDENED_CLAY_STAINED, 6)
block.HARDENED_CLAY_STAINED_GRAY=Block(block.HARDENED_CLAY_STAINED, 7)
block.HARDENED_CLAY_STAINED_LIGHT_GRAY=Block(block.HARDENED_CLAY_STAINED, 8)
block.HARDENED_CLAY_STAINED_CYAN=Block(block.HARDENED_CLAY_STAINED, 9)
block.HARDENED_CLAY_STAINED_PURPLE=Block(block.HARDENED_CLAY_STAINED, 10)
block.HARDENED_CLAY_STAINED_BLUE=Block(block.HARDENED_CLAY_STAINED, 11)
block.HARDENED_CLAY_STAINED_BROWN=Block(block.HARDENED_CLAY_STAINED, 12)
block.HARDENED_CLAY_STAINED_GREEN=Block(block.HARDENED_CLAY_STAINED, 13)
block.HARDENED_CLAY_STAINED_RED=Block(block.HARDENED_CLAY_STAINED, 14)
block.HARDENED_CLAY_STAINED_BLACK=Block(block.HARDENED_CLAY_STAINED, 15)
block.LEAVES_OAK_DECAYABLE=Block(block.LEAVES, 0)
block.LEAVES_SPRUCE_DECAYABLE=Block(block.LEAVES, 1)
block.LEAVES_BIRCH_DECAYABLE=Block(block.LEAVES, 2)
block.LEAVES_JUNGLE_DECAYABLE=Block(block.LEAVES, 3)
block.LEAVES_SPRUCE_DECAYABLE_CD=Block(block.LEAVES, 9)
block.LEAVES_JUNGLE_DECAYABLE_CD=Block(block.LEAVES, 11)
block.LEAVES_OAK_PERMANENT=Block(block.LEAVES, 4)
block.LEAVES_SPRUCE_PERMANENT=Block(block.LEAVES, 5)
block.LEAVES_BIRCH_PERMANENT=Block(block.LEAVES, 6)
block.LEAVES_JUNGLE_PERMANENT=Block(block.LEAVES, 7)
block.LEAVES_OAK_PERMANENT_CD=Block(block.LEAVES, 12)
block.LEAVES_SPRUCE_PERMANENT_CD=Block(block.LEAVES, 13)
block.LEAVES_BIRCH_PERMANENT_CD=Block(block.LEAVES, 14)
block.LEAVES_JUNGLE_PERMANENT_CD=Block(block.LEAVES, 15)
block.LEAVES2=Block(161)
block.LEAVES_ACACIA_DECAYABLE=Block(block.LEAVES2, 0)
block.LEAVES_DARK_OAK_DECAYABLE=Block(block.LEAVES2, 1)
block.LEAVES_ACACIA_PERMANENT=Block(block.LEAVES2, 4)
block.LEAVES_DARK_OAK_PERMANENT=Block(block.LEAVES2, 5)
block.LEAVES_ACACIA_DECAYABLE_CD=Block(block.LEAVES2, 8)
block.LEAVES_DARK_OAK_DECAYABLE_CD=Block(block.LEAVES2, 9)
block.LEAVES_ACACIA_PERMANENT_CD=Block(block.LEAVES2, 12)
block.LEAVES_DARK_OAK_PERMANENT_CD=Block(block.LEAVES2, 13)

local to_node={}
local from_node={}

local function translate(id, name, param2)
	if not param2 then param2=0 end
    if not minetest.registered_nodes[name] then
		if name.sub(1,14)=="stained_glass:" then
			name="mcl_core:glass"
		else
			name="mcl_core:stone"
		end
	end

	to_node[id]={name=name,param2=param2}
	local key=name.." "..param2
	if not from_node[key] then
		from_node[key]=id
	end
end

translate(block.AIR,"air")
translate(block.STONE,"mcl_core:stone")
translate(block.GRASS,"mcl_core:dirt_with_grass")
translate(block.DIRT,"mcl_core:dirt")
translate(block.COBBLESTONE,"mcl_core:cobble")
translate(block.WOOD_PLANKS,"mcl_core:wood")
translate(block.SAPLING,"mcl_core:sapling")
translate(block.BEDROCK,"mcl_core:obsidian")
translate(block.WATER_FLOWING,"mcl_core:water_flowing")
translate(block.WATER_STATIONARY,"mcl_core:water_source")
translate(block.LAVA_FLOWING,"mcl_core:lava_flowing")
translate(block.LAVA_STATIONARY,"mcl_core:lava_source")
translate(block.SAND,"mcl_core:sand")
translate(block.GRAVEL,"mcl_core:gravel")
translate(block.GOLD_ORE,"mcl_core:stone_with_gold")
translate(block.IRON_ORE,"mcl_core:stone_with_iron")
translate(block.COAL_ORE,"mcl_core:stone_with_coal")
translate(block.WOOD,"mcl_core:tree")
translate(block.LEAVES,"mcl_core:leaves")
translate(block.GLASS,"mcl_core:glass")
translate(block.LAPIS_LAZULI_ORE,"mcl_wool:blue") -- fix
translate(block.LAPIS_LAZULI_BLOCK,"mcl_wool:blue")
translate(block.SANDSTONE,"mcl_core:sandstone")
translate(block.BED,"mcl_beds:bed_red")
-- translate(block.COBWEB,"mcl_core:")
translate(block.GRASS_TALL,"mcl_core:junglegrass")
translate(block.WOOL,"mcl_wool:white")
translate(block.WATERLILY,"flowers:dandelion_white") --fix
translate(block.FLOWER_YELLOW,"flowers:dandelion_yellow")
translate(block.FLOWER_CYAN,"flowers:geranium")
translate(block.MUSHROOM_BROWN,"flowers:mushroom_brown")
translate(block.MUSHROOM_RED,"flowers:mushroom_red")
translate(block.GOLD_BLOCK,"mcl_core:goldblock")
translate(block.IRON_BLOCK,"mcl_core:steelblock")
--translate(block.STONE_SLAB_DOUBLE,"mcl_core:")
translate(block.BRICK_BLOCK,"mcl_core:brick")
translate(block.TNT,"mcl_tnt:tnt")
translate(block.BOOKSHELF,"mcl_core:bookshelf")
translate(block.MOSS_STONE,"mcl_core:mossycobble")
translate(block.OBSIDIAN,"mcl_core:obsidian")
translate(block.TORCH,"mcl_torches:torch")
translate(block.FIRE,"mcl_fire:basic_flame")
translate(block.CHEST,"mcl_core:chest")
translate(block.DIAMOND_ORE,"mcl_core:stone_with_diamond")
translate(block.DIAMOND_BLOCK,"mcl_core:diamondblock")
--translate(block.CRAFTING_TABLE,"mcl_core:")
translate(block.FARMLAND,"farming:soil")
translate(block.FURNACE_INACTIVE,"mcl_core:furnace")
translate(block.FURNACE_ACTIVE,"mcl_core:furnace_active")
translate(block.LADDER,"mcl_core:ladder")
translate(block.REDSTONE_ORE,"mcl_wool:red") -- fix
--translate(block.STONE_BUTTON,"mcl_core:")
translate(block.SNOW,"mcl_core:snow")
translate(block.ICE,"mcl_core:ice")
translate(block.SNOW_BLOCK,"mcl_core:snowblock")
translate(block.CACTUS,"mcl_core:cactus")
translate(block.CLAY,"mcl_core:clay")
translate(block.SUGAR_CANE,"farming:straw") -- fix
translate(block.FENCE,"mcl_core:fence_wood")
translate(block.GLOWSTONE_BLOCK,"mcl_core:meselamp") -- fix
--translate(block.BEDROCK_INVISIBLE,"mcl_core:")
translate(block.STONE_BRICK,"mcl_core:stonebrick")
translate(block.GLASS_PANE,"mcl_core:glass") -- fix
--translate(block.MELON,"mcl_core:")
translate(block.WOOD_SLAB_DOUBLE,"mcl_core:wood") --fix
--translate(block.FENCE_GATE,"mcl_core:")
--translate(block.WOOD_BUTTON,"mcl_core:")
translate(block.REDSTONE_BLOCK,"mcl_wool:red") -- fix
translate(block.QUARTZ_BLOCK,"mcl_wool:white")
translate(block.HARDENED_CLAY_STAINED,"mcl_wool:white") --fix
translate(block.SEA_LANTERN,"mcl_core:meselamp")
translate(block.CARPET,"mcl_wool:white") -- fix
translate(block.COAL_BLOCK,"mcl_core:coalblock")
--translate(block.REDSTONE_LAMP_INACTIVE,"mcl_core:")
translate(block.REDSTONE_LAMP_ACTIVE,"mcl_core:meselamp")
translate(block.SUNFLOWER,"flowers:tulip")
translate(block.LILAC,"flowers:viola")
translate(block.DOUBLE_TALLGRASS,"mcl_core:grass_2") --fix
--translate(block.LARGE_FERN,"mcl_core:")
translate(block.ROSE_BUSH,"flowers:rose")
translate(block.PEONY,"flowers:rose") --fix
translate(block.WOOL_WHITE,"mcl_wool:white")
translate(block.WOOL_ORANGE,"mcl_wool:orange")
translate(block.WOOL_MAGENTA,"mcl_wool:magenta")
translate(block.WOOL_LIGHT_BLUE,"mcl_wool:cyan") --fix
translate(block.WOOL_YELLOW,"mcl_wool:yellow")
translate(block.WOOL_LIME,"mcl_wool:green")
translate(block.WOOL_PINK,"mcl_wool:pink")
translate(block.WOOL_GRAY,"mcl_wool:dark_grey")
translate(block.WOOL_LIGHT_GRAY,"mcl_wool:grey")
translate(block.WOOL_CYAN,"mcl_wool:cyan")
translate(block.WOOL_PURPLE,"mcl_wool:violet")
translate(block.WOOL_BLUE,"mcl_wool:blue")
translate(block.WOOL_BROWN,"mcl_wool:brown")
translate(block.WOOL_GREEN,"mcl_wool:dark_green")
translate(block.WOOL_RED,"mcl_wool:red")
translate(block.WOOL_BLACK,"mcl_wool:black")
translate(block.CARPET_WHITE,"mcl_wool:white")
translate(block.CARPET_ORANGE,"mcl_wool:orange")
translate(block.CARPET_MAGENTA,"mcl_wool:magenta")
translate(block.CARPET_LIGHT_BLUE,"mcl_wool:cyan") --fix
translate(block.CARPET_YELLOW,"mcl_wool:yellow")
translate(block.CARPET_LIME,"mcl_wool:green")
translate(block.CARPET_PINK,"mcl_wool:pink")
translate(block.CARPET_GRAY,"mcl_wool:dark_grey")
translate(block.CARPET_LIGHT_GRAY,"mcl_wool:grey")
translate(block.CARPET_CYAN,"mcl_wool:cyan")
translate(block.CARPET_PURPLE,"mcl_wool:violet")
translate(block.CARPET_BLUE,"mcl_wool:blue")
translate(block.CARPET_BROWN,"mcl_wool:brown")
translate(block.CARPET_GREEN,"mcl_wool:dark_green")
translate(block.CARPET_RED,"mcl_wool:red")
translate(block.CARPET_BLACK,"mcl_wool:black")
translate(block.HARDENED_CLAY_STAINED_WHITE,"mcl_wool:white")
translate(block.HARDENED_CLAY_STAINED_ORANGE,"mcl_wool:orange")
translate(block.HARDENED_CLAY_STAINED_MAGENTA,"mcl_wool:magenta")
translate(block.HARDENED_CLAY_STAINED_LIGHT_BLUE,"mcl_wool:cyan") --fix
translate(block.HARDENED_CLAY_STAINED_YELLOW,"mcl_wool:yellow")
translate(block.HARDENED_CLAY_STAINED_LIME,"mcl_wool:green")
translate(block.HARDENED_CLAY_STAINED_PINK,"mcl_wool:pink")
translate(block.HARDENED_CLAY_STAINED_GRAY,"mcl_wool:dark_grey")
translate(block.HARDENED_CLAY_STAINED_LIGHT_GRAY,"mcl_wool:grey")
translate(block.HARDENED_CLAY_STAINED_CYAN,"mcl_wool:cyan")
translate(block.HARDENED_CLAY_STAINED_PURPLE,"mcl_wool:violet")
translate(block.HARDENED_CLAY_STAINED_BLUE,"mcl_wool:blue")
translate(block.HARDENED_CLAY_STAINED_BROWN,"mcl_wool:brown")
translate(block.HARDENED_CLAY_STAINED_GREEN,"mcl_wool:dark_green")
translate(block.HARDENED_CLAY_STAINED_RED,"mcl_wool:red")
translate(block.HARDENED_CLAY_STAINED_BLACK,"mcl_wool:black")

translate(block.STAINED_GLASS_WHITE,"stained_glass:faint_aqua") --fix
translate(block.STAINED_GLASS_ORANGE,"stained_glass:orange")
translate(block.STAINED_GLASS_MAGENTA,"stained_glass:magenta")
translate(block.STAINED_GLASS_LIGHT_BLUE,"stained_glass:faint_blue")
translate(block.STAINED_GLASS_YELLOW,"stained_glass:yellow")
translate(block.STAINED_GLASS_LIME,"stained_glass:lime")
translate(block.STAINED_GLASS_PINK,"stained_glass:faint_red")
translate(block.STAINED_GLASS_GRAY,"stained_glass:dark_blue") --fix
translate(block.STAINED_GLASS_LIGHT_GRAY,"stained_glass:medium_blue") --fix
translate(block.STAINED_GLASS_CYAN,"stained_glass:cyan")
translate(block.STAINED_GLASS_PURPLE,"stained_glass:violet")
translate(block.STAINED_GLASS_BLUE,"stained_glass:blue")
translate(block.STAINED_GLASS_BROWN,"stained_glass:dark_red")
translate(block.STAINED_GLASS_GREEN,"stained_glass:green")
translate(block.STAINED_GLASS_RED,"stained_glass:red")
translate(block.STAINED_GLASS_BLACK,"stained_glass:dark_green") --fix

--translate(block.LEAVES_OAK_DECAYABLE,"mcl_core:leaves")
translate(block.LEAVES_SPRUCE_DECAYABLE,"mcl_core:pine_needles")
--translate(block.LEAVES_BIRCH_DECAYABLE,"mcl_core:leaves")
translate(block.LEAVES_JUNGLE_DECAYABLE,"mcl_core:jungleleaves")
translate(block.LEAVES_OAK_PERMANENT,"mcl_core:leaves",1)
translate(block.LEAVES_SPRUCE_PERMANENT,"mcl_core:pine_needles",1)
translate(block.LEAVES_BIRCH_PERMANENT,"mcl_core:leaves",1)
translate(block.LEAVES_SPRUCE_DECAYABLE_CD,"mcl_core:pine_needles")
translate(block.LEAVES_JUNGLE_DECAYABLE_CD,"mcl_core:jungleleaves")
translate(block.LEAVES_JUNGLE_PERMANENT,"mcl_core:jungleleaves",1)
translate(block.LEAVES_OAK_PERMANENT_CD,"mcl_core:leaves",1)
translate(block.LEAVES_SPRUCE_PERMANENT_CD,"mcl_core:pine_needles",1)
translate(block.LEAVES_BIRCH_PERMANENT_CD,"mcl_core:leaves",1)
translate(block.LEAVES_JUNGLE_PERMANENT_CD,"mcl_core:jungleleaves",1)
translate(block.LEAVES2,"mcl_core:leaves")
translate(block.LEAVES_ACACIA_DECAYABLE,"mcl_core:acacia_leaves")
--block.to_node[block.LEAVES_DARK_OAK_DECAYABLE] =
translate(block.LEAVES_ACACIA_PERMANENT,"mcl_core:acacia_leaves",1)
translate(block.LEAVES_DARK_OAK_PERMANENT,"mcl_core:leaves",1)
translate(block.LEAVES_ACACIA_PERMANENT_CD,"mcl_core:acacia_leaves",1)
translate(block.LEAVES_DARK_OAK_PERMANENT_CD,"mcl_core:leaves",1)

translate(Block(228),"air")
translate(Block(229),"air")
translate(Block(236),"air")
translate(Block(254),"air")

translate(Block(block.WOOD_SLAB,0),"stairs:slab_wood",0)
translate(Block(block.WOOD_SLAB,8),"stairs:slab_wood",20)
translate(Block(block.WOOD_SLAB,1),"stairs:slab_pine_wood",0)
translate(Block(block.WOOD_SLAB,9),"stairs:slab_pine_wood",20)
translate(Block(block.WOOD_SLAB,2),"stairs:slab_wood",0)  -- FIX: birch
translate(Block(block.WOOD_SLAB,10),"stairs:slab_wood",20)
translate(Block(block.WOOD_SLAB,3),"stairs:slab_junglewood",0)
translate(Block(block.WOOD_SLAB,11),"stairs:slab_junglewood",20)
translate(Block(block.WOOD_SLAB,4),"stairs:slab_acacia_wood",0)
translate(Block(block.WOOD_SLAB,12),"stairs:slab_acacia_wood",20)
translate(Block(block.WOOD_SLAB,5),"stairs:slab_wood",0) -- FIX: dark oak
translate(Block(block.WOOD_SLAB,13),"stairs:slab_wood",20)

translate(Block(block.STONE_SLAB,0),"stairs:slab_stone",0)
translate(Block(block.STONE_SLAB,8),"stairs:slab_stone",20)
translate(Block(block.STONE_SLAB,1),"stairs:slab_sandstone",0)
translate(Block(block.STONE_SLAB,9),"stairs:slab_sandstone",20)
translate(Block(block.STONE_SLAB,2),"stairs:slab_wood",0)
translate(Block(block.STONE_SLAB,10),"stairs:slab_wood",20)
translate(Block(block.STONE_SLAB,3),"stairs:slab_cobble",0)
translate(Block(block.STONE_SLAB,11),"stairs:slab_cobble",20)
translate(Block(block.STONE_SLAB,4),"stairs:slab_brick",0)
translate(Block(block.STONE_SLAB,12),"stairs:slab_brick",20)
translate(Block(block.STONE_SLAB,6),"stairs:slab_stonebrick",0)
translate(Block(block.STONE_SLAB,13),"stairs:slab_stonebrick",20)
translate(Block(block.STONE_SLAB,7),"stairs:slab_desert_stonebrick",0) -- FIX: nether brick
translate(Block(block.STONE_SLAB,14),"stairs:slab_desert_stonebrick",20)
translate(Block(block.STONE_SLAB,8),"stairs:slab_desert_stone",0) -- FIX: quartz
translate(Block(block.STONE_SLAB,15),"stairs:slab_desert_stone",20)

local function defineTrapdoor(base_num,base_name)
   translate(Block(base_num,0),base_name,2)
   translate(Block(base_num,1),base_name,0)
   translate(Block(base_num,2),base_name,1)
   translate(Block(base_num,3),base_name,3)
   translate(Block(base_num,4+0),base_name.."_open",2)
   translate(Block(base_num,4+1),base_name.."_open",0)
   translate(Block(base_num,4+2),base_name.."_open",1)
   translate(Block(base_num,4+3),base_name.."_open",3)
   translate(Block(base_num,8+0),base_name,22)
   translate(Block(base_num,8+1),base_name,20)
   translate(Block(base_num,8+2),base_name,23)
   translate(Block(base_num,8+3),base_name,21)
   translate(Block(base_num,4+8+0),base_name.."_open",22)
   translate(Block(base_num,4+8+1),base_name.."_open",20)
   translate(Block(base_num,4+8+2),base_name.."_open",23)
   translate(Block(base_num,4+8+3),base_name.."_open",21)
end

defineTrapdoor(block.TRAPDOOR,"doors:trapdoor")
defineTrapdoor(block.IRON_TRAPDOOR,"doors:trapdoor")

local function defineDoor(base_num,base_name)
   translate(Block(base_num,0),base_name.."_b_2")
   translate(Block(base_num,1),base_name.."_b_2")
   translate(Block(base_num,2),base_name.."_b_2")
   translate(Block(base_num,3),base_name.."_b_2")
   translate(Block(base_num,4+0),base_name.."_b_2")
   translate(Block(base_num,4+1),base_name.."_b_2")
   translate(Block(base_num,4+2),base_name.."_b_2")
   translate(Block(base_num,4+3),base_name.."_b_2")
   translate(Block(base_num,8+0),base_name.."_t_2")
   translate(Block(base_num,8+1),base_name.."_t_2")
   translate(Block(base_num,8+2),base_name.."_t_2")
   translate(Block(base_num,8+3),base_name.."_t_2")
   translate(Block(base_num,4+8+0),base_name.."_t_2")
   translate(Block(base_num,4+8+1),base_name.."_t_2")
   translate(Block(base_num,4+8+2),base_name.."_t_2")
   translate(Block(base_num,4+8+3),base_name.."_t_2")
-- lots of fixes to be done!
-- it might not be doable as MC upper doors don't have directional data
end

defineDoor(block.DOOR_WOOD, "mcl_doors:wooden_door")
defineDoor(block.DOOR_IRON, "mcl_doors:iron_door")

local function defineStair(base_num,base_name)
   translate(Block(base_num,0),base_name,1)
   translate(Block(base_num,1),base_name,3)
   translate(Block(base_num,2),base_name,2)
   translate(Block(base_num,3),base_name,0)

   translate(Block(base_num,4),base_name,17)
   translate(Block(base_num,5),base_name,21)
   translate(Block(base_num,6),base_name,22)
   translate(Block(base_num,7),base_name,20)
end

defineStair(block.STAIR_WOOD, "stairs:stair_wood")
defineStair(block.STAIR_COBBLESTONE, "stairs:stair_cobble")
defineStair(108, "stairs:stair_brick")
defineStair(109, "stairs:stair_stonebrick")
defineStair(114, "stairs:stair_desert_stonebrick") -- fix: nether brick
defineStair(128, "stairs:stair_sandstone")
defineStair(134, "stairs:stair_pine_wood")
defineStair(135, "stairs:stair_wood") -- fix: birch
defineStair(136, "stairs:stair_junglewood")
defineStair(156, "stairs:stair_desert_stone") -- fix: quartz
defineStair(163, "stairs:stair_acacia_wood")
defineStair(164, "stairs:stair_wood") -- fix: dark oak
defineStair(180, "stairs:stair_sandstone") -- fix: red sandstone
defineStair(203, "stairs:stair_wood") -- fix: purpur

local function defineWood(main, subtype, node_name)
	translate(Block(main, subtype), node_name)
	translate(Block(main, subtype + 1 * 4), node_name, 12)
	translate(Block(main, subtype + 2 * 4), node_name, 4)
	translate(Block(main, subtype + 3 * 4), node_name) -- fix: all bark
end

defineWood(block.WOOD, 0, "mcl_core:tree") -- oak
defineWood(block.WOOD, 1, "mcl_core:pine_tree") -- spruce
defineWood(block.WOOD, 2, "mcl_core:tree") -- fix: birch
defineWood(block.WOOD, 3, "mcl_core:jungletree")
defineWood(block.WOOD2, 0, "mcl_core:acacia_tree")
defineWood(block.WOOD2, 1, "mcl_core:tree") -- fix: dark oak


function block.node_to_id_meta(node)
	if node.name == "air" or node.name == "ignore" then
		return 0,0
	end
        local entry=node.name .. " " .. node.param2
	if from_node[entry] then
		return unBlock(from_node[entry])
	end
	entry=node.name .. " 0"
	if from_node[entry] then
		return unBlock(from_node[entry])
	end
	return unBlock(block.STONE)
end

function block.id_meta_to_node(id, meta)
    if id == 0 then
		return {name="air"}
	end
    local value=Block(id, meta)
	if to_node[value] then
		return to_node[value]
	elseif to_node[id] then
		return to_node[id]
	else
		return {name="stone"}
	end
end

return block
