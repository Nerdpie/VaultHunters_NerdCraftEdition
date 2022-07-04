#priority -9000
// Defining a preloaded Akashic Tome

var fullTome = <item:akashictome:tome>.withTag(
    {"akashictome:data": {
        industrialforegoing: {id: "patchouli:guide_book" as string, Count: 1 as byte,
            tag: {"patchouli:book": "industrialforegoing:industrial_foregoing" as string}},
        modularrouters: {id: "patchouli:guide_book" as string, Count: 1 as byte,
            tag: {"patchouli:book": "modularrouters:book" as string}},
        botania: {id: "botania:lexicon" as string, Count: 1 as byte, tag: {}},
        powah: {id: "powah:book" as string, Count: 1 as byte},
        immersiveengineering: {id: "immersiveengineering:manual" as string, Count: 1 as byte},
        thermal: {id: "patchouli:guide_book" as string, Count: 1 as byte,
            tag: {"patchouli:book": "thermal:guidebook" as string}},
        rftoolsbase: {id: "rftoolsbase:manual" as string, Count: 1 as byte},
        supplementaries: {id: "patchouli:guide_book" as string, Count: 1 as byte,
            tag: {"patchouli:book": "supplementaries:supplementaries_guide" as string}},
        patchouli: {id: "patchouli:guide_book" as string, Count: 1 as byte,
            tag: {"patchouli:book": "patchouli:vault_hunters_nerdcraft_guide" as string}},
        valkyrielib: {id: "valkyrielib:info_tablet" as string, Count: 1 as byte},
        engineersdecor: {id: "patchouli:guide_book" as string, Count: 1 as byte,
            tag: {"patchouli:book": "engineersdecor:engineersdecor_manual" as string}}}});

// TODO Check if support for this is planned in 1.16
// Add a separate entry for the preloaded Tome
// mods.jei.JEI.addItem(fullTome);

// Add a recipe to get back the Tome if lost
// Does NOT restore any nested tags, e.g. Constellation Papers!
craftingTable.addShapeless("dirtcheaptome", fullTome, [<item:minecraft:dirt>]);

// Add a bit of info
fullTome.addTooltip("Preloaded with almost all of the basic manuals and guides!  Press 'U' for more details.");
mods.jei.JEI.addInfo(<item:akashictome:tome>, 
    ["Right click to select a stored book.",
    "Punch the book in the air to revert to the Tome.",
    "Craft the Tome with a book to add it.",
    "Sneak and Drop a selected book to remove it from the Tome."]);
