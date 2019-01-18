// ================================================================================
// Name: recipe_changes.zs
// Author: Square Horse Gaming - Daring Shepard

print("Initializing 'recipe_changes.zs'...");

// ================================================================================
//#Remove ChunkLoaders (use FTBU to manage chunkloading)
recipes.remove(<techreborn:chunk_loader>);
<techreborn:chunk_loader>.addTooltip(format.red("Right click an iron block with a blaze rod to manage chunkloading!"));
recipes.remove(<opencomputers:upgrade:4>);
<opencomputers:upgrade:4>.addTooltip(format.red("Right click an iron block with a blaze rod to manage chunkloading!"));
recipes.remove(<mekanism:anchorupgrade>);
<mekanism:anchorupgrade>.addTooltip(format.red("Right click an iron block with a blaze rod to manage chunkloading!"));

// ================================================================================
//#Remove Explosive Things
recipes.remove(<tconstruct:throwball:1>);
<tconstruct:throwball:1>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<appliedenergistics2:tiny_tnt>);
<appliedenergistics2:tiny_tnt>.addTooltip(format.red("Disabled due to exploits!"));

// ================================================================================
//#Add Thaumcraft Sapling Recipe
recipes.addShaped(<thaumcraft:sapling_greatwood>, [[<minecraft:sapling>, <thaumcraft:quicksilver>, <minecraft:sapling>], [<thaumcraft:quicksilver>, <minecraft:sapling>, <thaumcraft:quicksilver>], [<minecraft:sapling>, <thaumcraft:quicksilver>, <minecraft:sapling>]]);
recipes.addShaped(<thaumcraft:sapling_silverwood>, [[<thermalfoundation:material:130>, <thaumcraft:quicksilver>, <thermalfoundation:material:130>], [<thaumcraft:quicksilver>, <minecraft:sapling>, <thaumcraft:quicksilver>], [<thermalfoundation:material:130>, <thaumcraft:quicksilver>, <thermalfoundation:material:130>]]);

// ================================================================================
//#Fix Thaumcraft Stuff
recipes.addShaped(<thaumcraft:ingot:2>, [[<thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>], [<thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>], [<thaumcraft:nugget:8>, <thaumcraft:nugget:8>, <thaumcraft:nugget:8>]]);
recipes.addShaped(<thaumcraft:nugget:8> * 9, [[null, <thaumcraft:ingot:2>, null], [null, null, null], [null, null, null]]);

// ================================================================================
//#Remove Walrus
recipes.remove(<extracells:walrus>);

// ================================================================================
//#Remove Buggy Things
recipes.remove(<industrialrenewal:roof>);
<industrialrenewal:roof>.addTooltip(format.red("Disabled due to errors!"));

// ================================================================================
//#Remove exploity/annoying things
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
recipes.remove(<randomthings:spectrekey>);
<randomthings:spectrekey>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<xreliquary:destruction_catalyst>);
<xreliquary:destruction_catalyst>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<appliedenergistics2:matter_cannon>);
<appliedenergistics2:matter_cannon>.addTooltip(format.red("Disabled due to exploits!"));
recipes.remove(<mekanism:cardboardbox>);
<mekanism:cardboardbox>.addTooltip(format.red("Disabled due to exploits!"));

// ================================================================================
//#Remove rain/sun or time of day things
recipes.remove(<enderio:block_weather_obelisk>);
recipes.remove(<randomthings:weatheregg>);
recipes.remove(<randomthings:weatheregg:1>);
recipes.remove(<randomthings:weatheregg:2>);

// ================================================================================
//#Remove Jurassicraft Stuff
recipes.remove(<jurassicraft:vehicle_item>);
recipes.remove(<jurassicraft:vehicle_item:1>);
recipes.remove(<jurassicraft:vehicle_item:2>);
recipes.remove(<jurassicraft:unfinished_car>);
recipes.remove(<jurassicraft:car_windscreen>);
recipes.remove(<jurassicraft:car_seats>);
recipes.remove(<jurassicraft:car_chassis>);
recipes.remove(<jurassicraft:car_tire>);

// ================================================================================
//#Add Cloud Recipe
//recipes.addShapeless(<terraqueous:clouds> * 12, [<minecraft:snow>, <minecraft:snow>]);

// ================================================================================
//#Add Fairy Dust Recipe
recipes.addShaped(<wings:fairy_dust>, [[<ore:dustGold>, <minecraft:dye:1>, <ore:dustGold>], [<minecraft:dye:9>, <minecraft:diamond>, <minecraft:dye:2>], [<ore:dustGold>, <minecraft:dye:4>, <ore:dustGold>]]);

// ================================================================================
//#Remove Personal Chest from recipes that used it, replace with Steel Casing.
recipes.remove(<mekanism:machineblock2:1>);
recipes.addShaped(<mekanism:machineblock2:1>, [[<mekanism:enrichedalloy>, <ore:circuitBasic>, <mekanism:enrichedalloy>], [<mekanism:basicblock:8>, <mekanism:basicblock:9>, <mekanism:gastank>], [<mekanism:enrichedalloy>, <ore:circuitBasic>, <mekanism:enrichedalloy>]]);
recipes.remove(<mekanism:machineblock2:15>);
recipes.addShaped(<mekanism:machineblock2:15>, [[<mekanism:basicblock:8>], [<mekanism:machineblock2:14>]]);
recipes.remove(<mekanism:robit>);
recipes.addShaped(<mekanism:robit>, [[null, <ore:ingotSteel>, null], [<mekanism:energytablet>.anyDamage(), <mekanism:atomicalloy>, <mekanism:energytablet>.anyDamage()], [<mekanism:ingot>, <mekanism:basicblock:8>, <mekanism:ingot>]]);

// ================================================================================
print("Initialized 'recipe_changes.zs'");