import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified

print(" =================== General Tweaks / Fixes =================== ");
print(" ============================================================== ");


//====== Variables ======
//
	var planks = <ore:plankWood>;
	val logs = <ore:logWood>;
	var ingot_cast = <tconstruct:cast_custom:0>;

//====== Cyclic Remove Item ======
//
//	//remove corrupted chorus fruit to balance flight
//	recipes.remove(<cyclicmagic:corrupted_chorus>);
//
//====== Marble Dust ======
//
	var marble = <astralsorcery:blockmarble>;
	var marbleDust = <techreborn:dust:32>;
	mods.mekanism.enrichment.addRecipe(marble, marbleDust);
	mods.mekanism.crusher.addRecipe(marble, marbleDust);
	mods.thermalexpansion.Pulverizer.addRecipe(marbleDust, marble, 400);
	mods.actuallyadditions.Crusher.addRecipe(marbleDust, marble);
	
//====== Natura Ghostwood Sticks (for Fletching) ======
//
	recipes.addShaped(<natura:sticks:9>*6, [[<natura:nether_planks>],[<natura:nether_planks>],[<natura:nether_planks>]]);


//====== Blaze Rod Burn Times ======
//
	//Buff blaze rods to 16 "items" smelt time (up from 12)
	furnace.setFuel(<minecraft:blaze_rod>, 3200);
	//Add burn time for blaze lantern - 64 items
	furnace.setFuel(<quark:blaze_lantern>, 12800);



//====== Bag of holding warning ======
//
//	<extrautils2:bagofholding>.addTooltip(
//		format.underline(format.red(
//		"WARNING! Contents may be lost when switching to/from creative or OP"
//		))
//	);
//
//====== Bread ======
//
	recipes.addShaped(<minecraft:bread>, [[<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]]);


//====== Quartz Grindstone ======
//
	recipes.remove(<appliedenergistics2:grindstone>);
	recipes.addShaped(<appliedenergistics2:grindstone>, [
		[<minecraft:stone>, <ore:gearAluminum>, <minecraft:stone>],
		[<appliedenergistics2:material>, <minecraft:stone>, <appliedenergistics2:material>],
		[<minecraft:cobblestone>, <appliedenergistics2:material>, <minecraft:cobblestone>]]);


//====== Bauxite -> Aluminum ======
//
	mods.mekanism.infuser.addRecipe("REDSTONE", 10, <techreborn:dust:5>, <thermalfoundation:material:68>);


//====== Aluminum Dust ======
// Unify any possible type to base type (TE)
//
	recipes.remove(<techreborn:smalldust:1>);
	recipes.addShapeless(<thermalfoundation:material:68>, [<ore:dustAluminum>]);


//====== Black Quartz Block ======
//
	recipes.addShapeless(<actuallyadditions:item_misc:5> * 4, [<actuallyadditions:block_misc:2>]);


//====== AE2 Press Recipes
//
	var pressCalc = <appliedenergistics2:material:13>;
	var pressEngi = <appliedenergistics2:material:14>;
	var pressLogi = <appliedenergistics2:material:15>;
	var pressSili = <appliedenergistics2:material:19>;
	var blockSkyS = <appliedenergistics2:sky_stone_block>;
	var dustSkySt = <appliedenergistics2:material:45>;
	var crystalCertusPure = <appliedenergistics2:material:10>;
	var siliconAE = <appliedenergistics2:material:5>;
	var siliconRS = <refinedstorage:silicon>;
	var siliconEIO = <enderio:item_material:5>;
	
	//QoL new ways to get SkyStone Dust
	mods.mekanism.enrichment.addRecipe(blockSkyS, dustSkySt);
	mods.mekanism.crusher.addRecipe(blockSkyS, dustSkySt);
	mods.thermalexpansion.Pulverizer.addRecipe(dustSkySt, blockSkyS, 400);
	mods.actuallyadditions.Crusher.addRecipe(dustSkySt, blockSkyS);
	
	//Mek Infuser recipes
	mods.mekanism.infuser.addRecipe("CARBON",   80, dustSkySt, pressSili);
	mods.mekanism.infuser.addRecipe("REDSTONE", 80, dustSkySt, pressLogi);
	mods.mekanism.infuser.addRecipe("DIAMOND",  80, dustSkySt, pressEngi);
	mods.mekanism.infuser.addRecipe("TIN",      80, dustSkySt, pressCalc);
	
	//Convert from one to another
	recipes.addShapeless(pressSili, [pressLogi, dustSkySt, dustSkySt]);
	recipes.addShapeless(pressLogi, [pressEngi, dustSkySt, dustSkySt]);
	recipes.addShapeless(pressEngi, [pressCalc, dustSkySt, dustSkySt]);
	recipes.addShapeless(pressCalc, [pressSili, dustSkySt, dustSkySt]);
	recipes.addShapeless(siliconAE, [siliconRS]);
	recipes.addShapeless(siliconRS, [siliconEIO]);
	recipes.addShapeless(siliconEIO, [siliconAE]);
	
	//Empowerer recipes (using function to make 4x recipes to accept any press as input)
	empPressRecipe(siliconAE,                 pressSili, [48,  55,  73]);
	empPressRecipe(<minecraft:gold_block>,    pressLogi, [255, 195, 5]);
	empPressRecipe(<minecraft:diamond_block>, pressEngi, [0,   190, 255]);
	empPressRecipe(crystalCertusPure,         pressCalc, [240, 248, 255]);
	
	function empPressRecipe(x as IItemStack, y as IItemStack, z as float[]){
		//                  x = input item   y = out press    z = color


		var blockSkyS = <appliedenergistics2:sky_stone_block>;
		var dustSkySt = <appliedenergistics2:material:45>;
		var pressurePlate = <minecraft:heavy_weighted_pressure_plate>;
		
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
	}


//====== Jazz-up Quark Elytra dupe so it shows in JEI ======
//
	recipes.remove(<minecraft:elytra>.withTag({"quark:elytraDye": 0}));
	recipes.addShapeless(<minecraft:elytra>.withTag({"quark:elytraDye": 0}), [
		<minecraft:elytra>.giveBack(), <quark:enderdragon_scale>
		]);
	<quark:enderdragon_scale>.addTooltip(
					format.underline(format.aqua(
					"Can be used to DUPLICATE an Elytra"
					)));
	//mods.jei.JEI.addDescription(<quark:enderdragon_scale>, "By crafting an Elytra and a Dragon Scale together, the Dragon Scale will take the form of the Elytra","",
	//														"","This does not consume nor damage the original Elytra");


//====== Vanilla-ish Cookie recipe ======
//
	recipes.addShaped(<minecraft:cookie>, [[<minecraft:wheat>, <minecraft:dye:3>, <minecraft:wheat>]]);


//====== Natura Flamestring ======
//
	<ore:fieryItem>.addAll(<ore:slimecrystalMagma>);
	<ore:fieryItem>.add(<mysticalagriculture:fire_essence>);
	<ore:fieryBlock>.add(<tconstruct:firewood:1>);
	<ore:fieryBlock>.addAll(<ore:blockBlaze>);
	recipes.addShaped(<natura:materials:7>*3, [
		[<ore:string>, <ore:string>, <ore:string>],
		[<ore:string>, <ore:string>, <ore:string>],
		[<ore:fieryItem>, <ore:fieryBlock>, <ore:fieryItem>]
		]);


//====== Morph-o-Tool ======
//
	recipes.addShaped(<morphtool:tool>*1, [
		[null, <ore:dyeGreen>, <ore:dyeBlue>],
		[null, <ore:ingotIron>, <ore:dyeRed>],
		[<ore:ingotIron>, null, null]
		]);

//====== Enderman Skull ======
//
    var enderEssence = <mysticalagriculture:enderman_essence>;
    var blankSkull = <mysticalagriculture:crafting:15>;
    recipes.addShaped(<enderio:block_enderman_skull>, [
        [enderEssence, enderEssence, enderEssence],
        [enderEssence, blankSkull,   enderEssence], 
        [enderEssence, enderEssence, enderEssence]
        ]);

//====== Creative Flight Modifier ======
//
//recipes.remove(<environmentaltech:modifier_creative_flight>);
//	recipes.addShaped(<environmentaltech:modifier_creative_flight>, [
//		[<minecraft:elytra>, <simplyjetpacks:itemjetpack:18>, <minecraft:elytra>],
//		[<actuallyadditions:item_wings_of_the_bats>, <extrautils2:angelring:0>, <actuallyadditions:item_wings_of_the_bats>], 
//		[<advancedrocketry:itemupgrade:1>, <rftools:flight_module>, <advancedrocketry:itemupgrade:1>]
//		]);
//
//====== Readding the Chest Variances ======
//
recipes.remove(<minecraft:chest>);
	recipes.addShaped(<minecraft:chest>, [
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		[<ore:plankWood>, null, <ore:plankWood>], 
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]);

	recipes.addShaped(<minecraft:chest>*4, [
		[<ore:logWood>, <ore:logWood>, <ore:logWood>],
		[<ore:logWood>, null, <ore:logWood>], 
		[<ore:logWood>, <ore:logWood>, <ore:logWood>]
		]);

//====== Fixing Unbaked Talisman ======
//
//var unbaked_talisman = <terraqueous:item_main:3>;
//var clay_ball = <minecraft:clay_ball>;
//var feather = <ore:feather>;
//var endium = <ore:gemEndimium>;
//recipes.remove(unbaked_talisman);
//	recipes.addShaped(unbaked_talisman, [
//		[feather, endium, feather],
//		[clay_ball, clay_ball, clay_ball]
//		]);
//
//====== Removing Wrong Blocks ======
//	
	recipes.remove(<mekanism:basicblock:1>);
	recipes.remove(<mekanism:basicblock:3>);
	recipes.remove(<mekanism:basicblock:5>);
	recipes.remove(<mekanism:basicblock:12>);
	recipes.remove(<mekanism:basicblock:13>);
	recipes.remove(<actuallyadditions:block_misc:5>);
	recipes.remove(<chisel:block_charcoal2:1>);

//====== Add Invar Casting Recipes ======
//	
	var invar = <thermalfoundation:material:162>;
	var invar_block = <thermalfoundation:storage_alloy:2>;
	var molten_invar = <liquid:invar>;
	mods.tconstruct.Casting.addTableRecipe(invar, ingot_cast, molten_invar, 144);
	mods.tconstruct.Casting.addBasinRecipe(invar_block, invar_block, molten_invar, 1296);
	
//====== Add Iridium Casting Recipes ======
//
	var iridium = <thermalfoundation:material:135>;
	var iridium_block = <thermalfoundation:storage:7>;
	var molten_iridium = <liquid:iridium>;
	mods.tconstruct.Casting.addTableRecipe(iridium, ingot_cast, molten_iridium, 144);
	mods.tconstruct.Casting.addBasinRecipe(iridium_block, iridium_block, molten_iridium, 1296);
	
//====== Add Xnet Description ======
//	
		<xnet:controller>.addTooltip(
					format.underline(format.aqua(
					"Does not need any power to operate or work."
					)));
	//mods.jei.JEI.addDescription(<xnet:controller>, "Xnet controller has been configured to not use any power at all",
	//										 "However it has 100k of internal capacity for RF power, which you can ignore, it does not need to be charged");
											 
//====== Remove Refined Obsidian Dust From Smeltery ======
//
	mods.tconstruct.Melting.removeRecipe(<liquid:refinedobsidian>, <mekanism:otherdust:5>);
		
//====== SkyStone Tooltip ======
//
	blockSkyS.addTooltip(format.aqua("You can find it only in Mining World dimension, where AE2 meteors will spawn."));

//====== Scornful Oblivion ======
//
   recipes.remove(<magicbees:resource:11>);
   recipes.addShaped(<magicbees:resource:11>, [
      [<magicbees:resource:8>, <minecraft:skull:1>, <magicbees:resource:9>],
      [<minecraft:skull:1>, <minecraft:dragon_egg>.reuse(), <minecraft:skull:1>], 
      [<magicbees:resource:9>, <minecraft:skull:1>, <magicbees:resource:8>]
		]);
      
//====== Beer Mug ======
//
   mods.forestry.ThermionicFabricator.removeCast(<extratrees:drink>);
   recipes.addShaped(<extratrees:drink> * 8, [
      [null, null, null],
      [null, <forestry:beeswax>, null],
      [null, <minecraft:glass>, null]
      ]);
      