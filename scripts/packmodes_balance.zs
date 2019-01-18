import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal

print(" =================== Balance Tweaks =================== ");
print(" ====================================================== ");
/*
	Balance / Equalization of things that we (ATM Team) feel make the
	pack stand-out from others. Things that, to us, "make sense" and
	should be standard enabled (this is NOT "expert" mode, this is
	"stuff that makes sense" mode)
	
	We understand not everyone will agree with us so we have moved all
	"balance" changes to this one file so it is easy to remove for
	anyone that would like to play a "simplified" version of the pack.
*/


//====== FLIGHT BALANCE ======
//
	//====== Variables ======
	//
		var normalRing = <extrautils2:angelring:*>;
		var chestWithTag = <extrautils2:angelring:0>;
		var baubleRing = <flyringbaublemod:flyingring:*>;
		var batLasso = <extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}, No_Place: 1 as byte});
		var ghastLasso = <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}, No_Place: 1 as byte});

	//====== Botania Tiara ======
	//
		recipes.removeShaped(<botania:flighttiara:*>);
		recipes.addShaped(<botania:flighttiara>, [
			[<botania:manaresource:5>, <botania:manaresource:5>,  <botania:manaresource:5>],
			[<botania:manaresource:7>, <ore:astralGemCrystals>,   <botania:manaresource:7>],
			[<minecraft:feather>,      <botania:manaresource:15>, <minecraft:feather>]
			]);
			
		//Making sure the wing-flavor recipes are still present -- should be redundant since we only did removeShaped for the ring recipe
			recipes.addShapeless(<botania:flighttiara:8>, [<botania:flighttiara:*>, <botania:quartz:6>]);
			recipes.addShapeless(<botania:flighttiara:7>, [<botania:flighttiara:*>, <botania:quartz:5>]);
			recipes.addShapeless(<botania:flighttiara:6>, [<botania:flighttiara:*>, <botania:quartz:4>]);
			recipes.addShapeless(<botania:flighttiara:5>, [<botania:flighttiara:*>, <botania:quartz:3>]);
			recipes.addShapeless(<botania:flighttiara:4>, [<botania:flighttiara:*>, <botania:quartz:2>]);
			recipes.addShapeless(<botania:flighttiara:3>, [<botania:flighttiara:*>, <botania:quartz:1>]);
			recipes.addShapeless(<botania:flighttiara:2>, [<botania:flighttiara:*>, <botania:quartz>]);
			recipes.addShapeless(<botania:flighttiara:1>, [<botania:flighttiara:*>, <minecraft:quartz>]);
			
//====== MINERS / QUARRY BALANCE ======
//
	//====== Variables ======
	//
		var AAMiner = <actuallyadditions:block_miner>;
		//var RFTQuarry = <rftools:shape_card:2>;
		//var RFTBuilder = <rftools:builder>;
		//<ore:basicPump>.add(<rangedpumps:pump>);
		<ore:basicPump>.add(<mekanism:machineblock:12>);
		<ore:basicPump>.add(<immersiveengineering:metal_device0:5>);
		<ore:basicPump>.add(<industrialforegoing:fluid_pump>);

//====== FARMING BALANCE ======
//	
/*
	Balance / Equalization of auto-farming machines and resource-crops
	
	NOTE: The high difficulty on resource-bearing-crops is an alternative
	to removing the mod altogether for being too OP. Instead it is
	used as a mid/late game bonus as players work towards endgame and
	creative-only recipes.
*/
	//====== Variables ======
	//
	//	var Cloche = <immersiveengineering:metal_device1:13>;
	//	<ore:growGlass>.add(<actuallyadditions:block_greenhouse_glass>);
	//	<ore:growGlass>.add(<astralsorcery:itemcoloredlens:2>);
	//
	//====== Nerf Cloche ======
	//
	//	recipes.remove(Cloche);
	//	recipes.addShaped("crtcloche", Cloche, [
	//		[<ore:growGlass>, <immersiveengineering:material:27>, <ore:growGlass>],
	//		[<ore:blockGlassHardened>, null, <ore:blockGlassHardened>],
	//		[<immersiveengineering:treated_wood>, <immersiveengineering:toolupgrade:6>, <immersiveengineering:treated_wood>]
	//	]);
	//
	//====== Tier 5 Mystical Ag ======
	//
		//Seeds
		recipes.remove(<mysticalagriculture:crafting:21>);
		recipes.addShaped(<mysticalagriculture:crafting:21>, [
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:4>],
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:20>, <mysticalagriculture:crafting:4>],
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:4>]
			]);
		//Ingots
		recipes.removeShaped(<mysticalagriculture:crafting:37>);
		recipes.addShaped(<mysticalagriculture:crafting:37>, [
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>,  <mysticalagriculture:crafting:4>],
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:36>, <mysticalagriculture:crafting:4>],
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>,  <mysticalagriculture:crafting:4>]
			]);
		//re-add nugget->ingot since it was shaped
		recipes.addShapeless(<mysticalagriculture:crafting:37>, [
			<mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>,
			<mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>,
			<mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>
			]);

			
//====== Nerf Recipe for Mek Reactor ======
//
		
	recipes.remove(<mekanismgenerators:reactor>);
	
	//Mek
	recipes.addShaped(<mekanismgenerators:reactor>, [
		[<ore:circuitUltimate>, <mekanism:basicblock2:3>.withTag({tier: 3}), <ore:circuitUltimate>],
		[<mekanismgenerators:reactor:2>, <mekanism:gastank>.withTag({tier: 3}), <mekanismgenerators:reactor:2>],
		[<mekanismgenerators:reactor:2>, <ore:shardLead>, <mekanismgenerators:reactor:2> ]
		]);
	//BigReactors
	recipes.addShaped(<mekanismgenerators:reactor>, [
		[<bigreactors:ingotmetals:4>, <mekanism:energycube>.withTag({tier: 3}), <bigreactors:ingotmetals:4>],
		[<mekanismgenerators:reactor:2>, <mekanism:gastank>.withTag({tier: 3}), <mekanismgenerators:reactor:2>],
		[<mekanismgenerators:reactor:2>, <bigreactors:reactorcontroller>, <mekanismgenerators:reactor:2> ]
		]);

//====== Slightly Balance EXU2 Water Mill ======
//
	recipes.addShaped(<extrautils2:passivegenerator:3>, [
		[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>],
		[<extrautils2:ingredients:0>,     <extrautils2:ingredients:5>,     <extrautils2:ingredients:0>],
		[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]
		]);

	
//====== No Easy Steel ======
//
	furnace.remove(<ore:ingotSteel>);


//====== No easy steel ROD ======
//
	recipes.removeShaped(<immersiveengineering:material:2>);
	
	//Add others to same steel rod oredict
	<ore:stickSteel>.add(<tconstruct:tool_rod>.withTag({Material: "steel"}));
	
	//Fix IE Steel Scaffolding to use oredict steel rod
	recipes.removeShaped(<immersiveengineering:metal_decoration1:1>);
	recipes.addShaped(<immersiveengineering:metal_decoration1:1> * 6, [
		[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
		[null, <ore:stickSteel>, null],
		[<ore:stickSteel>, null, <ore:stickSteel>]
		]);
	
	recipes.addShapeless(<immersiveengineering:metal_decoration1:1>, [<immersiveengineering:metal_decoration1_slab:1>, <immersiveengineering:metal_decoration1_slab:1>]);


//====== CHUNK LOADER BALANCE ======
//
	//Disabled outright
	recipes.remove(<techreborn:chunk_loader>);
	recipes.remove(<mekanism:anchorupgrade>);

	//Recipe Gating:
	//First level, OC chunkloader upgrade
	recipes.remove(<opencomputers:upgrade:4>);

	//First level, MEK Anchor Upgrade
	recipes.remove(<mekanism:anchorupgrade>);

//====== Tech Reborn Change ======
//
	recipes.remove(<techreborn:solar_panel:4>);
	recipes.remove(<techreborn:solar_panel:3>);
	recipes.addShaped("QuantumSolarPanel", <techreborn:solar_panel:4>, [
		[<ore:dustDiamond>, <ore:glassReinforced>, <ore:dustDiamond>],
		[<ore:glassReinforced>, <techreborn:solar_panel:3>, <ore:glassReinforced>],
		[<techreborn:part:0>, <techreborn:machine_frame:2>, <techreborn:part:0>]
	]);
	recipes.addShaped("UltimateSolarPanel", <techreborn:solar_panel:3>, [
		[<ore:dustDiamond>, <ore:glassReinforced>, <ore:dustDiamond>],
		[<ore:glassReinforced>, <ore:dustDiamond>, <ore:glassReinforced>],
		[<ore:circuitAdvanced>, <techreborn:solar_panel:2>, <ore:circuitAdvanced>]
	]);