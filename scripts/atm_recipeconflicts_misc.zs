import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

#packmode normal simplified

print(" =================== Recipe Conflicts =================== ");
print(" ======================================================== ");
/*
	This script is dedicated to any items that have conflicting recipes
*/


//====== Variables ======
	var MekBoilerCasing = <mekanism:basicblock2:7>;
	var planks = <ore:plankWood>;
	var strings = <ore:string>;
	var cobweb = <minecraft:web>;
	var marble = <ore:stoneMarble>;


//====== Misc Tool/Armor Conflicts ======
//
	recipes.remove(<techreborn:bronzespade:0>);
	recipes.remove(<techreborn:bronzesword:0>);
	recipes.remove(<techreborn:bronzeaxe:0>);
	recipes.remove(<techreborn:bronzehoe:0>);
	recipes.remove(<techreborn:bronzehelmet:0>);
	recipes.remove(<techreborn:bronzeboots:0>);
	recipes.remove(<techreborn:bronzepickaxe:0>);
	recipes.remove(<techreborn:bronzechestplate:0>);
	recipes.remove(<techreborn:bronzeleggings:0>);
	recipes.remove(<thermalfoundation:tool.sword_bronze:0>);
	recipes.remove(<thermalfoundation:tool.shovel_bronze:0>);
	recipes.remove(<thermalfoundation:tool.hoe_bronze:0>);
	recipes.remove(<thermalfoundation:tool.axe_bronze:0>);
	recipes.remove(<thermalfoundation:tool.pickaxe_bronze:0>);
	recipes.remove(<thermalfoundation:armor.legs_bronze:0>);
	recipes.remove(<thermalfoundation:armor.plate_bronze:0>);
	recipes.remove(<thermalfoundation:armor.helmet_bronze:0>);
	recipes.remove(<thermalfoundation:armor.boots_bronze:0>);
	recipes.remove(<embers:pickaxe_lead:0>);
	recipes.remove(<embers:pickaxe_copper:0>);
	recipes.remove(<embers:pickaxe_silver:0>);
	recipes.remove(<embers:pickaxe_aluminum:0>);
	recipes.remove(<embers:pickaxe_bronze:0>);
	recipes.remove(<embers:pickaxe_electrum:0>);
	recipes.remove(<embers:pickaxe_nickel:0>);
	recipes.remove(<embers:pickaxe_tin:0>);
	recipes.remove(<embers:pickaxe_bronze:0>);
	recipes.remove(<actuallyadditions:item_pickaxe_emerald:0>);
	recipes.remove(<actuallyadditions:item_chest_emerald:0>);
	recipes.remove(<actuallyadditions:item_pants_emerald:0>);


//====== Forestry gears redundant ======
//
	recipes.remove(<forestry:gear_bronze>);
	recipes.remove(<forestry:gear_copper>);
	recipes.remove(<forestry:gear_tin>);


//====== Recipe tweaks ======
//------ Mostly just due to conflicting recipe overlap
//
	recipes.removeShaped(<rustic:crop_stake:0>);
	recipes.addShaped("cropstake", <rustic:crop_stake:0> * 3,
		[[null, null, planks],
		[null, planks, null],
		[planks, null, null]]);

//====== Charcoal ======
//
	recipes.remove(<actuallyadditions:block_misc:5>);    // conflicts with <chisel:block_charcoal2:1>


//====== Rustic Lattice / Iron Gear ======
//
	recipes.remove(<rustic:iron_lattice:0>);    //conflicts with <thermalfoundation:material:24> (iron gear)
	// A single iron ingot is "worth" 1.875 iron bars
	// A single iron bars is .375 of an iron ingot
	// Orig reustic recipe: 5 ingots = 16 lattice (or 3.2 lattice per ingot)
	// 5 iron bars = 1.875 iron ingots
	// 3.2 lattice per ingot times 1.875 = exactly 6 lattice per 5 iron bars
	recipes.addShapedMirrored("fixrusticlattice", <rustic:iron_lattice:0> * 6,
		[[        null,             <minecraft:iron_bars>,         null         ],
		 [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
		 [        null,             <minecraft:iron_bars>,         null         ]]
	);


//====== Constantan Grit ======
// Thermal vs Immersive conflict
//
	recipes.remove(<thermalfoundation:material:100>);


//====== Wooden Rail ======
// Tconstruct vs Extra Rails conflict
//
	recipes.remove(<tconstruct:wood_rail:0>);


//====== Harvestcraft Cotton ======
// Extra recipe not needed, conflicts with seed recipe
//
	recipes.remove(<harvestcraft:cottonitem>);
// ====== Boiler Casing ======
// conflicts with Steel Gear
//
	recipes.remove(MekBoilerCasing);
	recipes.addShaped(<mekanism:basicblock2:7> * 4, [
		[null, <ore:ingotSteel>, null],
		[<ore:ingotSteel>, <ore:plateSteel>, <ore:ingotSteel>],
		[null, <ore:ingotSteel>, null]
	]);


//====== Trowell ======
//(Small Pile of Sulfur Dust) <techreborn:smalldust:52> * 4 conflicts with [Shapeless] (Sulphur Powder) <botany:misc:3> * 4
	recipes.remove(<botany:misc:3>);
	<ore:dustTinySulfur>.add(<botany:misc:3>);
	<ore:dustSmallSulfur>.addAll(<ore:dustTinySulfur>);

//(Barley Flour) <natura:materials:1> * 1 conflicts with [Shapeless] (Barley Seed) <harvestcraft:barleyseeditem:0> * 1
	recipes.remove(<natura:materials:1>);
	recipes.remove(<natura:materials:2>);
	//mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
	//mods.actuallyadditions.Crusher.addRecipe(  IItemStack output, IItemStack input, @Optional IItemStack outputSecondary, @Optional int outputSecondaryChance);
	// barley flour grinders
	mods.thermalexpansion.Pulverizer.addRecipe(<natura:materials:1>, <natura:materials:0>, 400);
	mods.thermalexpansion.Pulverizer.addRecipe(<natura:materials:1>, <harvestcraft:barleyitem>, 400);
	mods.actuallyadditions.Crusher.addRecipe(<natura:materials:1>, <natura:materials:0>);
	mods.actuallyadditions.Crusher.addRecipe(<natura:materials:1>, <harvestcraft:barleyitem>);
	// wheat flour grinders
	mods.thermalexpansion.Pulverizer.addRecipe(<natura:materials:2>, <minecraft:wheat>, 400);
	mods.actuallyadditions.Crusher.addRecipe(<natura:materials:2>, <minecraft:wheat>);

//(Inactive Respawn Obelisk) <natura:respawn_obelisk:0> * 1 conflicts with [Shaped] (Oak Chest) <minecraft:chest:0> * 4
	recipes.remove(<natura:respawn_obelisk>);
	recipes.addShaped(<natura:respawn_obelisk>, [
		[<natura:nether_logs:*>, <natura:nether_logs:*>, <natura:nether_logs:*>],
		[<natura:nether_logs:*>, <minecraft:ender_pearl>, <natura:nether_logs:*>],
		[<natura:nether_logs:*>, <natura:nether_logs:*>, <natura:nether_logs:*>]
		]);

//(Soft Pretzel) <harvestcraft:softpretzelitem:0> * 1 conflicts with [Shapeless] (Crackers) <harvestcraft:crackersitem:0> * 1
	recipes.remove(<harvestcraft:crackersitem:0>);
	recipes.addShapeless(<harvestcraft:crackersitem:0>, [<harvestcraft:crackeritem:0>, <harvestcraft:crackeritem:0>]);
	
//(Uranium Seeds) <mysticalagriculture:uranium_seeds:0> * 1 conflicts with [Shaped] (Yellorium Seeds) <mysticalagriculture:yellorium_seeds:0> * 1
	recipes.remove(<mysticalagriculture:yellorium_seeds:0>);

//(Bricks Wall) <ceramics:clay_wall:0> * 6 conflicts with [Shaped] (Brick Wall) <quark:brick_wall:0> * 6
	//conflict resolved by disabling in quark config

//(Mini Chest) <extrautils2:minichest:0> * 9 conflicts with [Shapeless] (Oak Chest) <minecraft:chest:0> * 1
	// mini chest works from oak chest, not conflicting in practice


//====== diamond nugget =====
// conflicts with open computers diamond chip
//
	recipes.remove(<techreborn:nuggets:24>);
	recipes.remove(<thermalfoundation:material:16>);


//====== Sawdust Paper CardboardBox ======
//
	//recipes.remove(<minecraft:paper>);

	recipes.addShapeless(<minecraft:paper>*3, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>]);
	recipes.addShaped(<minecraft:paper>*3, [[<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]]);
	recipes.addShapedMirrored(<minecraft:paper>*3, [
		[<ore:cropRice>, null, null],
		[null, <ore:cropRice>, null],
		[null, null, <ore:cropRice>]
		]);
	recipes.addShapeless(<minecraft:paper>*6, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <liquid:water>*1000]);
	
	//Rice Dough
	recipes.remove(<actuallyadditions:item_misc:9>);
	recipes.addShapeless(<actuallyadditions:item_misc:9>*2, [<ore:cropRice>, <ore:cropRice>, <ore:cropRice>, <ore:cropRice>]);


//====== TiCo Moss ======
//
	recipes.remove(<tconstruct:materials:18>);
	recipes.addShapeless(<tconstruct:materials:18>, [<ore:blockMossy>, <ore:blockMossy>, <ore:blockMossy>, <ore:blockMossy>]);


//====== Iron Stick ======
//
	recipes.remove(<immersiveengineering:material:1>);
	recipes.remove(<rustic:chain>);
	recipes.remove(<ore:stickIron>);
	recipes.addShaped(<rustic:chain>*12, [
		[<ore:ingotIron>, null, null],
		[<ore:ingotIron>, null, null],
		[<ore:ingotIron>, null, null]
		]);	
	recipes.addShaped(<immersiveengineering:material:1>*4, [
		[null, <ore:ingotIron>, null],
		[null, <ore:ingotIron>, null],
		[null, <ore:ingotIron>, null]
		]);	
	<ore:stickIron>.add(<tconstruct:tool_rod>.withTag({Material: "iron"}));
	
//====== Wax Capsule ======
//
   recipes.remove(<forestry:capsule>);
   recipes.addShaped(<forestry:capsule> * 3, [
      [null, null, null],
      [<harvestcraft:beeswaxitem>, <harvestcraft:beeswaxitem>, <harvestcraft:beeswaxitem>], 
      [null, null, null]
      ]);
   recipes.addShaped(<forestry:capsule> * 3, [
      [null, null, null],[<forestry:beeswax>,
      <forestry:beeswax>, <forestry:beeswax>],
      [null, null, null]
      ]);
	