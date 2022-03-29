/* scripts made by Douwsky
for Iskall85's Vaulthunters */

import crafttweaker.api.SmithingManager;
import crafttweaker.api.Brewing;
import crafttweaker.api.registries.IRecipeManager;
import mods.botania.ElvenTrade;

// ====================
// Variables and constants for readability
// ====================

// Vault entries
val gemAlex = <item:the_vault:gem_alexandrite>;
val gemBeni = <item:the_vault:gem_benitoite>;
val gemEcho = <item:the_vault:gem_echo>;
val gemLari = <item:the_vault:gem_larimar>;
val gemOpal = <item:the_vault:gem_black_opal>;
val gemWuto = <item:the_vault:gem_wutodie>;
val perfectAlex = <item:the_vault:perfect_alexandrite>;
val perfectBeni = <item:the_vault:perfect_benitoite>;
val perfectEcho = <item:the_vault:perfect_echo_gem>;
val perfectLari = <item:the_vault:perfect_larimar>;
val perfectOpal = <item:the_vault:perfect_black_opal>;
val perfectWuto = <item:the_vault:perfect_wutodie>;
val perfectCommon = <tag:items:the_vault:perfectcommongems>;
val pogEcho = <item:the_vault:echo_pog>;
val pogGem = <item:the_vault:gem_pog>;
val vaultDia = <item:the_vault:vault_diamond>;
val vaultDiaBlock = <item:the_vault:vault_diamond_block>;
val vaultIngot = <item:the_vault:vault_ingot>;
val vaultNugget = <item:the_vault:vault_nugget>;

// Vanilla entries
val air = <item:minecraft:air>;
val blockGlowstone = <item:minecraft:glowstone>;
val blockIron = <item:minecraft:iron_block>;
val blockRedstone = <item:minecraft:redstone_block>;
val bucketWater = <item:minecraft:water_bucket>;
val glass = <tag:items:forge:glass>;
val piston = <item:minecraft:piston>;
val pistonSticky = <item:minecraft:sticky_piston>;
val workbench = <tag:items:forge:workbench>;

// AE2 entries
val blockFluix = <item:appliedenergistics2:fluix_block>;
val pureFluix = <item:appliedenergistics2:purified_fluix_crystal>;
val processorLogi = <item:appliedenergistics2:logic_processor>;
val processorCalc = <item:appliedenergistics2:calculation_processor>;
val processorEngi = <item:appliedenergistics2:engineering_processor>;
val coreAnnih = <item:appliedenergistics2:annihilation_core>;
val coreForm = <item:appliedenergistics2:formation_core>;
val crystalCertus = <tag:items:appliedenergistics2:crystals/certus>;
val crystalCertusCharged = <item:appliedenergistics2:charged_certus_quartz_crystal>;
val crystalFluix = <tag:items:appliedenergistics2:crystals/fluix>;
val cableGlass = <tag:items:appliedenergistics2:glass_cable>;
val cableFluix = <item:appliedenergistics2:fluix_glass_cable>;
val cableFluixCovered = <item:appliedenergistics2:fluix_covered_cable>;
val cableFluixSmart = <item:appliedenergistics2:fluix_smart_cable>;
val cableDenseSmart = <item:appliedenergistics2:fluix_smart_dense_cable>;
val glassQuartz = <item:appliedenergistics2:quartz_glass>;
val component1k = <item:appliedenergistics2:1k_cell_component>;
val component4k = <item:appliedenergistics2:4k_cell_component>;
val component16k = <item:appliedenergistics2:16k_cell_component>;
val energyAcceptor = <item:appliedenergistics2:energy_acceptor>;
val terminal = <item:appliedenergistics2:terminal>;
val tagInterface = <tag:items:appliedenergistics2:interface>;

// Other mods
val dustQuartz = <tag:items:forge:dusts/quartz>;
val furnaceGold = <item:ironfurnaces:gold_furnace>;
val silicon = <tag:items:forge:silicon>;


// ====================
// adding recipes
// ====================

craftingTable.addShaped("ae2_controller", <item:appliedenergistics2:controller>, [
    [perfectOpal, pogEcho, perfectOpal],
    [pureFluix, processorEngi, pureFluix],
    [perfectOpal, pureFluix, perfectOpal]
]);

craftingTable.addShaped("ae2_drive", <item:appliedenergistics2:drive>, [
    [perfectCommon, processorEngi, perfectCommon],
    [cableFluix, pogGem, cableFluix],
    [perfectCommon, processorEngi, perfectCommon]
]);

craftingTable.addShaped("ae2assembler", <item:appliedenergistics2:molecular_assembler>, [
    [gemOpal, pogGem, gemOpal],
    [coreAnnih, workbench, coreForm],
    [gemOpal, pogGem, gemOpal]
]);

craftingTable.addShaped("ae2_1k_storage_component", component1k, [
    [perfectBeni, crystalCertus, perfectBeni],
    [crystalCertus, gemAlex, crystalCertus],
    [perfectBeni, crystalCertus, perfectBeni]
]);

craftingTable.addShaped("ae2_4k_storage_component", component4k, [
    [perfectWuto, perfectAlex, perfectWuto],
    [component1k, vaultDia, component1k],
    [perfectWuto, component1k, perfectWuto]
]);

craftingTable.addShaped("ae2_16k_storage_component", component16k, [
    [perfectOpal, perfectAlex, perfectOpal],
    [component4k, vaultDiaBlock, component4k],
    [perfectOpal, component4k, perfectOpal]
]);

craftingTable.addShaped("ae2_64k_storage_component", <item:appliedenergistics2:64k_cell_component>, [
    [pogGem, perfectAlex, pogGem],
    [component16k, perfectEcho, component16k],
    [pogGem, component16k, pogGem]
]);

craftingTable.addShaped("ae2_logic_processor", processorLogi, [
    [perfectLari, air, perfectLari],
    [silicon, vaultIngot, silicon],
    [perfectLari, silicon, perfectLari]
]);

craftingTable.addShaped("ae2_calculation_processor", processorCalc, [
    [perfectBeni, air, perfectBeni],
    [silicon, vaultNugget, silicon],
    [perfectBeni, silicon, perfectBeni]
]);

craftingTable.addShaped("ae2_engineering_processor", processorEngi, [
    [perfectLari, air, perfectBeni],
    [silicon, vaultNugget, silicon],
    [perfectBeni, silicon, perfectLari]
]);

craftingTable.addShaped("ae2_crafting_unit", <item:appliedenergistics2:crafting_unit>, [
    [perfectLari, processorCalc, perfectLari],
    [cableGlass, processorLogi, cableGlass],
    [perfectLari, processorCalc, perfectLari]
]);

craftingTable.addShaped("ae2_exporter", <item:appliedenergistics2:export_bus>, [
    [perfectLari, air, perfectLari],
    [cableGlass, coreForm, cableGlass],
    [perfectLari, piston, perfectLari]
]);

craftingTable.addShaped("ae2_importer", <item:appliedenergistics2:import_bus>, [
    [perfectLari, air, perfectLari],
    [cableGlass, coreAnnih, cableGlass],
    [perfectLari, piston, perfectLari]
]);

craftingTable.addShapeless("ae2_storage_bus", <item:appliedenergistics2:storage_bus>, [
    tagInterface, piston, perfectLari,
    pistonSticky, perfectLari, perfectLari
]);

craftingTable.addShaped("ae2_interface", <item:appliedenergistics2:interface>, [
    [blockIron, glass, blockIron],
    [coreAnnih, perfectLari, coreForm],
    [blockIron, glass, blockIron]
]);

craftingTable.addShapeless("ae2_terminal", terminal, [
    coreAnnih, coreForm, perfectLari,
    perfectBeni, perfectLari, processorLogi
]);

craftingTable.addShapeless("ae2_crafting_terminal", <item:appliedenergistics2:crafting_terminal>, [
    workbench, processorCalc, terminal,
    pogEcho
]);

craftingTable.addShapeless("ae2_speed_card", <item:appliedenergistics2:speed_card>, [
    <item:appliedenergistics2:advanced_card>, pureFluix, perfectCommon
]);

craftingTable.addShapeless("ae2_capacity_card", <item:appliedenergistics2:capacity_card>, [
    <item:appliedenergistics2:basic_card>, crystalCertusCharged, perfectCommon
]);

craftingTable.addShapeless("ae2_fluix_glass_cable", cableFluix *4, [
    <item:appliedenergistics2:quartz_fiber>, crystalFluix, perfectCommon,
    crystalFluix
]);

// ... this (and the other 're-dye' recipes wouldn't be necessary if you used `removeByName`...
craftingTable.addShapeless("ae2_fluix_glass_cable_redye", cableFluix, [
    cableGlass, bucketWater
]);

craftingTable.addShapeless("ae2_fluix_covered_cable", cableFluixCovered, [
    <tag:items:quark:quilted_wools>, cableGlass, gemWuto
]);

craftingTable.addShapeless("ae2_fluix_covered_cable_redye", cableFluixCovered, [
    <tag:items:appliedenergistics2:covered_cable>, bucketWater
]);

craftingTable.addShapeless("ae2_fluix_smart_cable", cableFluixSmart, [
    blockRedstone, cableFluixCovered, gemOpal,
    blockGlowstone
]);

craftingTable.addShapeless("ae2_fluix_smart_cable_redye", cableFluixSmart, [
    <tag:items:appliedenergistics2:smart_cable>, bucketWater
]);

craftingTable.addShapeless("ae2_fluix_dense_cable", cableDenseSmart, [
    blockRedstone, cableFluixSmart, pogGem,
    blockGlowstone
]);

craftingTable.addShapeless("ae2_fluix_dense_cable_redye", cableDenseSmart, [
    <tag:items:appliedenergistics2:smart_dense_cable>, bucketWater
]);

craftingTable.addShaped("ae2_wireless", <item:appliedenergistics2:wireless_terminal>, [
    [air, <item:appliedenergistics2:wireless_receiver>, air],
    [perfectOpal, terminal, perfectOpal],
    [air, <item:appliedenergistics2:dense_energy_cell>, air]
]);

craftingTable.addShaped("ae2_vibration_chamber", <item:appliedenergistics2:vibration_chamber>, [
    [blockIron, pogGem, blockIron],
    [blockIron, furnaceGold, blockIron],
    [gemEcho, energyAcceptor, gemEcho]
]);

craftingTable.addShaped("ae2_energy_acceptor", energyAcceptor, [
    [blockIron, glassQuartz, gemEcho],
    [glassQuartz, blockFluix, glassQuartz],
    [gemEcho, glassQuartz, blockIron]
]);

// ... why isn't there a tag for Beni and Lari?
craftingTable.addShaped("ae2_quartz_glass_lari", glassQuartz * 4, [
    [dustQuartz, glass, dustQuartz],
    [glass, gemLari, glass],
    [dustQuartz, glass, dustQuartz]
]);

craftingTable.addShaped("ae2_quartz_glass_beni", glassQuartz * 4, [
    [dustQuartz, glass, dustQuartz],
    [glass, gemBeni, glass],
    [dustQuartz, glass, dustQuartz]
]);
