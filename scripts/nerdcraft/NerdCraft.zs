#priority -9000
// NerdCraft Edition tweaks

// Use a device that converts blocks to make a more POWERFUL version of itself!
val dictifier = <item:mekanism:oredictionificator>;
craftingTable.removeRecipe(dictifier);
stoneCutter.addRecipe("oredictifier", dictifier, <item:minecraft:stonecutter>);

// Reduce JEI clutter by hiding AE2 facades
mods.jei.JEI.hideItem(<item:appliedenergistics2:facade>);
