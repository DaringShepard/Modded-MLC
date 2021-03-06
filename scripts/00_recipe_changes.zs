#Name: recipe_changes.zs
#Author: Feed the Beast

print("Initializing 'recipe_changes.zs'...");

	#Remove ChunkLoaders (use FTBU to manage chunkloading)
recipes.remove(<ic2:te:82>);
recipes.remove(<opencomputers:upgrade:4>);
recipes.remove(<mekanism:anchorupgrade>);

	#Atempt to fix TiC grout shapless recipe
recipes.addShapeless(<tconstruct:soil> * 2, [<minecraft:sand>, <minecraft:gravel>, <minecraft:clay_ball>]);

	#Fix wood gear recipe in grindstone
recipes.remove(<appliedenergistics2:material:40>);

	#Remove ExU2 Sickles to prevent overlap with Thermal Foundation Sickles
recipes.remove(<extrautils2:sickle_wood>);
recipes.remove(<extrautils2:sickle_stone>);
recipes.remove(<extrautils2:sickle_iron>);
recipes.remove(<extrautils2:sickle_gold>);
recipes.remove(<extrautils2:sickle_diamond>);

	#Changed Bark recipe to prevent overlap with Wood piles
recipes.remove(<quark:bark:5>);
recipes.addShaped(<quark:bark:5> * 2, 
	[
		[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>],
		[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>],
		[<minecraft:log2:1>, <minecraft:log2:1>, <minecraft:log2:1>]
	]
);

recipes.remove(<quark:bark:4>);
recipes.addShaped(<quark:bark:4> * 2,
	[
		[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>],
		[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>],
		[<minecraft:log2>, <minecraft:log2>, <minecraft:log2>]
	]
);

recipes.remove(<quark:bark:3>);
recipes.addShaped(<quark:bark:3> * 2,
	[
		[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>],
		[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>],
		[<minecraft:log:3>, <minecraft:log:3>, <minecraft:log:3>]
	]
);

recipes.remove(<quark:bark:2>);
recipes.addShaped(<quark:bark:2> * 2,
	[
		[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>],
		[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>],
		[<minecraft:log:2>, <minecraft:log:2>, <minecraft:log:2>]
	]
);

recipes.remove(<quark:bark:1>);
recipes.addShaped(<quark:bark:1> * 2,
	[
		[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>],
		[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>],
		[<minecraft:log:1>, <minecraft:log:1>, <minecraft:log:1>]
	]
);

recipes.remove(<quark:bark>);
recipes.addShaped(<quark:bark> * 2,
	[
		[<minecraft:log>, <minecraft:log>, <minecraft:log>],
		[<minecraft:log>, <minecraft:log>, <minecraft:log>],
		[<minecraft:log>, <minecraft:log>, <minecraft:log>]
	]
);

	#Convert Quark deco adds to vanilla equiv
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap:4>]
);
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap:3>]
);
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap:2>]
);
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap:1>]
);
recipes.addShapeless(<minecraft:trapped_chest>,
	[<quark:custom_chest_trap>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest:4>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest:3>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest:2>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest:1>]
);
recipes.addShapeless(<minecraft:chest>,
	[<quark:custom_chest>]
);

	#Items removed due to bugs
recipes.remove(<actuallyadditions:item_bag>);
<actuallyadditions:item_bag>.addTooltip(format.darkRed("Disabled due to bug!"));
recipes.remove(<extrautils2:bagofholding>);
<extrautils2:bagofholding>.addTooltip(format.darkRed("Disabled due to bug!"));

	#Changed Iron Lattice recipe to fix conflict with iron gears
recipes.remove(<rustic:iron_lattice>);
recipes.addShaped(<rustic:iron_lattice> * 4,
	[
		[null, <minecraft:iron_nugget>, null],
		[<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
		[null, <minecraft:iron_nugget>, null]
	]
);

	#Reduce crafting of bronze ingots to 2 from 4 in crafting table, various machine outputs are still 4
recipes.remove(<forestry:ingot_bronze>);
recipes.addShapeless(<thermalfoundation:material:163> * 2,
	[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>]
);

	#Add Open Computers Diamond Chip recipe
recipes.remove(<opencomputers:material:29>);
recipes.addShapeless(<opencomputers:material:29>,
	[<ore:nuggetDiamond>, <ore:nuggetDiamond>]
);

	#Fix bronze gear recipe
recipes.addShaped(<thermalfoundation:material:291>,
	[
		[null, <ore:ingotBronze>, null],
		[<ore:ingotBronze>, <minecraft:iron_ingot>, <ore:ingotBronze>],
		[null, <ore:ingotBronze>, null]
	]
);

	#Experience Solidifier
recipes.remove(<actuallyadditions:block_xp_solidifier>);
recipes.addShaped(<actuallyadditions:block_xp_solidifier>,
	[
		[<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>],
		[<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:item_misc:8>, <actuallyadditions:block_crystal_empowered:2>],
		[<minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>]
	]
);

	#Auto Breaker (Embers)
recipes.remove(<embers:breaker>);
recipes.addShaped(<embers:breaker>,
	[
		[<embers:plate_dawnstone>, <minecraft:iron_ingot>, <embers:plate_dawnstone>],
		[<ore:ingotLead>, <ore:dustRedstone>, <ore:ingotLead>],
		[<ore:ingotLead>, null, <ore:ingotLead>]
	]
);

	#Harvestcraft Cracker Recipe
recipes.remove(<harvestcraft:crackersitem>);
recipes.addShapeless(<harvestcraft:crackersitem> * 2,
	[<harvestcraft:crackeritem>, <harvestcraft:crackeritem>]
);

	#Architecture Craft Pulley
recipes.remove(<architecturecraft:largepulley>);
recipes.addShaped(<architecturecraft:largepulley>,
	[
		[null, <ore:slabWood>, null],
		[<ore:slabWood>, <ore:plankWood>, <ore:slabWood>],
		[null, <ore:slabWood>, null]
	]
);

	#Removed Charcoal Block (chisel) to allow AA's version be default which is registered as a fuel type
recipes.remove(<chisel:block_charcoal2:1>);

	#Wither ash
recipes.addShaped(<minecraft:skull:1>,
	[
		[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
		[<quark:black_ash>, <minecraft:skull>, <quark:black_ash>],
		[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>]
	]
);

	#Fix barley seed overlap
recipes.remove(<harvestcraft:barleyitem>);
recipes.addShapeless(<harvestcraft:barleyseeditem> * 2,
	[<harvestcraft:barleyitem>, <harvestcraft:barleyitem>]
);

	#Steel Casing
recipes.addShapeless(<ic2:casing:5> * 2, 
	[<thermalfoundation:material:352>,<ic2:forge_hammer>]
);

	#Essence of Scornful Oblivion
recipes.addShaped(<magicbees:resource:11>,
	[
		[<magicbees:resource:8>, <minecraft:skull:1>, <magicbees:resource:9>],
		[<minecraft:skull:1>, null, <minecraft:skull:1>],
		[<magicbees:resource:9>, <minecraft:skull:1>, <magicbees:resource:8>]
	]
);

	#Remove exploity/annoying things
recipes.remove(<actuallyadditions:item_damage_lens>);
<actuallyadditions:item_damage_lens>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<actuallyadditions:item_player_probe>);
<actuallyadditions:item_player_probe>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<forestry:rainmaker>);
<forestry:rainmaker>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<botania:teruterubozu>);
<botania:teruterubozu>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<botania:laputashard:19>);
<botania:laputashard:19>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<botania:laputashard:14>);
<botania:laputashard:14>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<botania:laputashard:9>);
<botania:laputashard:9>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<botania:laputashard:4>);
<botania:laputashard:4>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<botania:laputashard>);
<botania:laputashard>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<botania:rainbowrod>);
<botania:rainbowrod>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<botania:gravityrod>);
<botania:gravityrod>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<xreliquary:alkahestry_tome>);
<xreliquary:alkahestry_tome>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<xreliquary:destruction_catalyst>);
<xreliquary:destruction_catalyst>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<appliedenergistics2:matter_cannon>);
<appliedenergistics2:matter_cannon>.addTooltip(format.red("Disabled due to exploits!"));

	#Remove rain/sun or time of day things
recipes.remove(<enderio:block_weather_obelisk>);

	#Remove Jurassicraft Stuff
#recipes.remove(<jurassicraft:vehicle_item>);
#recipes.remove(<jurassicraft:vehicle_item:1>);
#recipes.remove(<jurassicraft:vehicle_item:2>);
#recipes.remove(<jurassicraft:unfinished_car>);
#recipes.remove(<jurassicraft:car_windscreen>);
#recipes.remove(<jurassicraft:car_seats>);
#recipes.remove(<jurassicraft:car_chassis>);
#recipes.remove(<jurassicraft:car_tire>);

	#Add Thaumcraft Sapling Recipe
recipes.addShaped(<thaumcraft:sapling_greatwood>, [[<minecraft:sapling>, <thaumcraft:quicksilver>, <minecraft:sapling>], [<thaumcraft:quicksilver>, <minecraft:sapling>, <thaumcraft:quicksilver>], [<minecraft:sapling>, <thaumcraft:quicksilver>, <minecraft:sapling>]]);
recipes.addShaped(<thaumcraft:sapling_silverwood>, [[<thermalfoundation:material:130>, <thaumcraft:quicksilver>, <thermalfoundation:material:130>], [<thaumcraft:quicksilver>, <minecraft:sapling>, <thaumcraft:quicksilver>], [<thermalfoundation:material:130>, <thaumcraft:quicksilver>, <thermalfoundation:material:130>]]);

	#Remove Explosive Things
recipes.remove(<tconstruct:throwball:1>);
<tconstruct:throwball:1>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<appliedenergistics2:tiny_tnt>);
<appliedenergistics2:tiny_tnt>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<mekanism:cardboardbox>);
<mekanism:cardboardbox>.addTooltip(format.red("Disabled due to exploits!"));

print("Initialized 'recipe_changes.zs'");