import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified

print(" =================== ATM OreDict (ores) =================== ");
print(" ========================================================== ");

//====== Unify ores into oredicts =======
	//SILVER
	<ore:oreSilver>.addItems([
		<embers:ore_silver>,
		<techreborn:ore:13>,
		<thermalfoundation:ore:2>
		]);
	recipes.addShapeless("silverconvert", <thermalfoundation:ore:2>*2, [<ore:oreSilver>, <ore:oreSilver>]);
	//TIN
	<ore:oreTin>.addItems([
		<embers:ore_tin>,
		<techreborn:ore2:1>,
		<thermalfoundation:ore:1>
		]);
	recipes.addShapeless("tinconvert", <thermalfoundation:ore:1>*2, [<ore:oreTin>, <ore:oreTin>]);
	//COPPER
	<ore:oreCopper>.addItems([
		<embers:ore_copper>,
		<techreborn:ore2>,
		<thermalfoundation:ore>
		]);
	recipes.addShapeless("copperconvert", <thermalfoundation:ore>*2, [<ore:oreCopper>, <ore:oreCopper>]);
	//LEAD
	<ore:oreLead>.addItems([
		<embers:ore_lead>,
		<techreborn:ore:12>,
		<thermalfoundation:ore:3>
		]);
	recipes.addShapeless("leadconvert", <thermalfoundation:ore:3>*2, [<ore:oreLead>, <ore:oreLead>]);
	//NICKEL
	<ore:oreNickel>.addItems([
		<embers:ore_nickel>,
		<thermalfoundation:ore:5>
		]);
	recipes.addShapeless("nickelconvert", <thermalfoundation:ore:5>*2, [<ore:oreNickel>, <ore:oreNickel>]);
	//ALUMINUM
	<ore:oreAluminum>.addItems([
		<embers:ore_aluminum>,
		<techreborn:ore:4>,
		<thermalfoundation:ore:4>,
		<immersiveengineering:ore:1>
		]);
	<ore:oreBauxite>.addAll(<ore:oreAluminum>);
	recipes.addShapeless("aluminumconvert", <immersiveengineering:ore:1>*2, [<ore:oreAluminum>, <ore:oreAluminum>]);
	//IRIDIUM
	<ore:oreIridium>.addItems([
		<techreborn:ore:1>,
		<thermalfoundation:ore:7>
		]);
	recipes.addShapeless("iridiumconvert", <thermalfoundation:ore:7>*2, [<ore:oreIridium>, <ore:oreIridium>]);
	//COAL
	<ore:oreCoal>.addItems([
		<netherendingores:ore_end_vanilla>,
		<netherendingores:ore_nether_vanilla>,
		<minecraft:coal_ore>
	]);
	recipes.addShapeless("coalconvert", <minecraft:coal_ore>*2, [<ore:oreCoal>, <ore:oreCoal>]);
	//DIAMOND
	<ore:oreDiamond>.addItems([
		<netherendingores:ore_end_vanilla:1>,
		<netherendingores:ore_nether_vanilla:1>,
		<minecraft:diamond_ore>
	]);
	recipes.addShapeless("diamondconvert", <minecraft:diamond_ore>*2, [<ore:oreDiamond>, <ore:oreDiamond>]);
	//EMERALD
	<ore:oreEmerald>.addItems([
		<netherendingores:ore_end_vanilla:2>,
		<netherendingores:ore_nether_vanilla:2>,
		<minecraft:emerald_ore>
	]);
	recipes.addShapeless("emeraldconvert", <minecraft:emerald_ore>*2, [<ore:oreEmerald>, <ore:oreEmerald>]);
	//DIMENSIONAL (RFTools)
	<ore:oreDimensional>.addItems([
		<rftools:dimensional_shard_ore>,
		<rftools:dimensional_shard_ore:1>,
		<rftools:dimensional_shard_ore:2>
	]);
	recipes.addShapeless("dimensionalconvert", <rftools:dimensional_shard_ore>*2, [<ore:oreDimensional>, <ore:oreDimensional>]);
	//URANIUM/YELLORIUM
	var uraniumOres = [
		<bigreactors:brore>,
		<immersiveengineering:ore:5>
	] as IItemStack[];
	<ore:oreYellorite>.addItems(uraniumOres);
	<ore:oreYellorium>.addAll(<ore:oreYellorite>);
	<ore:oreUranium>.addAll(<ore:oreYellorite>);
	<ore:blockUranium>.addAll(<ore:blockYellorium>);
	<ore:blockYellorium>.addAll(<ore:blockUranium>);
	//recipes.addShapeless("uraniumconvert", <ic2:resource:4>*2, [<ore:oreUranium>, <ore:oreUranium>]);
	//REDSTONE
	<ore:oreRedstone>.addItems([
		<netherendingores:ore_end_vanilla:6>,
		<netherendingores:ore_nether_vanilla:6>,
		<minecraft:redstone_ore>
	]);
	recipes.addShapeless("redstoneconvert", <minecraft:redstone_ore>*2, [<ore:oreRedstone>, <ore:oreRedstone>]);
	//NETHER QUARTZ
	<ore:oreQuartz>.addItems([
		<embers:ore_quartz>,
		<minecraft:quartz_ore>
	]);
	recipes.addShapeless("netherquartzconvert", <minecraft:quartz_ore>*2, [<ore:oreQuartz>, <ore:oreQuartz>]);
	//LAPIS
	<ore:oreLapis>.addItems([
		<netherendingores:ore_end_vanilla:5>,
		<netherendingores:ore_nether_vanilla:5>,
		<minecraft:lapis_ore>
	]);
	recipes.addShapeless("lapisconvert", <minecraft:lapis_ore>*2, [<ore:oreLapis>, <ore:oreLapis>]);
	//IRON
	<ore:oreIron>.addItems([
		<netherendingores:ore_end_vanilla:4>,
		<netherendingores:ore_nether_vanilla:4>,
		<minecraft:iron_ore>
	]);
	recipes.addShapeless("ironconvert", <minecraft:iron_ore>*2, [<ore:oreIron>, <ore:oreIron>]);
	//GOLD
	<ore:oreGold>.addItems([
		<netherendingores:ore_end_vanilla:3>,
		<netherendingores:ore_nether_vanilla:3>,
		<minecraft:gold_ore>
	]);
	recipes.addShapeless("goldconvert", <minecraft:gold_ore>*2, [<ore:oreGold>, <ore:oreGold>]);
	//GEM PERIDOT
	<ore:orePeridot>.addItems([
		<biomesoplenty:gem_ore:2>,
		<techreborn:ore:10>
		]);
	recipes.addShapeless("peridotconvert", <techreborn:ore:10>*2, [<ore:orePeridot>, <ore:orePeridot>]);
	//PROSPERITY
	<ore:oreProsperity>.addItems([
		<mysticalagriculture:prosperity_ore>,
		<mysticalagriculture:nether_prosperity_ore>,
		<mysticalagriculture:end_prosperity_ore>
		]);
	recipes.addShapeless("prosperityconvert", <mysticalagriculture:prosperity_ore>*2, [<ore:oreProsperity>, <ore:oreProsperity>]);
	//GEM RUBY
	<ore:oreRuby>.addItems([
		<biomesoplenty:gem_ore:1>,
		<techreborn:ore:2>
		]);
	recipes.addShapeless("rubyconvert", <techreborn:ore:2>*2, [<ore:oreRuby>, <ore:oreRuby>]);
	//GEM SAPPHIRE
	<ore:oreSapphire>.addItems([
		<biomesoplenty:gem_ore:6>,
		<techreborn:ore:3>
		]);
	recipes.addShapeless("sapphireconvert", <techreborn:ore:3>*2, [<ore:oreSapphire>, <ore:oreSapphire>]);
	//AMBER
	<ore:blockAmber>.addItems([
		<biomesoplenty:gem_block:7>,
		<thaumcraft:amber_block>
		]);
	recipes.addShapeless("amberblockconvert", <thaumcraft:amber_block>*2, [<ore:blockAmber>, <ore:blockAmber>]);
	recipes.addShapeless("amberconvert", <thaumcraft:amber>*2, [<ore:gemAmber>, <ore:gemAmber>]);
	//MISC
	<ore:oreDraconium>.add(<draconicevolution:draconium_ore:32767>);


//====== Oredict some uranium stuff ======
//
	//<ore:dustUranium>.addItems([<bigreactors:dustmetals>, <immersiveengineering:metal:14>, <ic2:crushed:6>]);
	<ore:dustYellorium>.addAll(<ore:dustUranium>);
	<ore:crushedUranium>.addAll(<ore:dustUranium>);
	recipes.addShapeless(<immersiveengineering:metal:14>, [<ore:dustUranium>]);
	//recipes.addShapeless(<ic2:crushed:6>*2, [<ore:dustUranium>, <ore:dustUranium>]);
