#priority -9000
# NerdCraft Edition debug/testing

//====================
//Some variables for readability
//====================
//var myvar = <ore:oreUnobtainium>;

//====================
//Ensure that the OreDict entries exist...
//====================

//If any OreDict entries need to be defined, do so in the 'General' script

//====================
//Naming, Localization, Lore
//====================
//Reference: https://crafttweaker.readthedocs.io/en/latest/#Vanilla/Items/Renaming/
//<mod:item>.displayName="My New Name";

//Reference: https://crafttweaker.readthedocs.io/en/latest/#Vanilla/Items/Tooltips/
//<mod:item>.addTooltip("Some tooltip");

//Reference: https://crafttweaker.readthedocs.io/en/latest/#Mods/JEI/JEI/

//====================
//Assorted Tweaks
//====================
//Reference: https://crafttweaker.readthedocs.io/en/latest/#Vanilla/Recipes/Crafting/Recipes_Crafting_Table/
//recipes.remove(<mod:item>);
//recipes.addShaped("NC_RecipeName", <mod:item>,
//      [[item, item, item],
//      [item, item, item],
//      [item, item, item]]);



println("Wither Immune blocks");
for element in <tag:blocks:minecraft:wither_immune>.getElements() {
     println(element.getTranslationKey());
}

println("Dragon Immune blocks");
for element in <tag:blocks:minecraft:dragon_immune>.getElements() {
     println(element.getTranslationKey());
}
