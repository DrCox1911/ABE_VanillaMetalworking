require "ABEWorldMenu"
if not ABEVanillaMetalworking then ABEVanillaMetalworking = {} end
--[[
-- {{{
--To extend AbeObjs, just add to this object like this:
--Simple recipe:
--local recipe = {};
--recipe.name = "Makeshift chair";
--recipe.resultClass = "ISSimpleFurniture";
--recipe.images = { west = "chair_west", north = "chair_north", east = "chair_east", south = "chair_south" };
--recipe.tools = {}; -- no tools
--recipe.ingredients = { ["Base.Plank"] = 4, ["Base.RippedSheets"] = 4};
--recipe.requirements = { any = { any = { level = 0, time = 60, progress = 0 } } };
--table.insert(ABE.Recipes, recipe);
--
--More complex:
--local recipe = {};
--recipe.name = "Metal sheet wall";
--recipe.resultClass = "MyModMetalSheetWall";
--recipe.images = { west = "mymod_sheetwall_west", north = "mymod_sheetwall_north", east = nil, south = nil };
--recipe.tools = { "MyMod.Blowtorch", "MyMod.Simplegloves/MyMod.Workinggloves" }; -- require a blowtorch and either simple gloves or working gloves
--recipe.ingredients = { ["MyMod.Metalsheet"] = 4, ["MyMod.Blowtorchfuel"] = 1 };
--recipe.requirements = {
--	Engineer = {
--		Woodwork = { -- need an engineer with level 2 or better in woodwoorking for 600 minutes
--			level = 2,
--			time = 600,
--			progress = 0
--		}
--	},
--	Electrician = {
--		Electricity = { -- need an electrician with level 4 in electricity for 300 minutes
--			level = 4,
--			time = 300,
--			progress = 0
--		}
--	},
--	any = {
--		any = {
--			level = 0, -- need anyone else for 120 minutes
--			time = 120,
--			progress = 0
--		}
--	}
--};
--table.insert(ABE.Recipes, recipe);
-- }}}
--]] 

ABEVanillaMetalworking.Recipes = { -- {{{
	ContextMenu_Metalworking = {
		isCategory = true,
		ContextMenu_Metal_Containers = {
			isCategory = true,
			ContextMenu_Metal_Crate = {
				name = "ContextMenu_Metal_Crate",
				resultClass = "ISWoodenContainer",
				ingredients = {
					["Base.MetalPipe"] = 2,
					["Base.SmallSheetMetal"] = 2,
					["Base.SheetMetal"] = 2,
					["Base.ScrapMetal"] = 1
				},
				images = {
					MetalWelding = {
						[0] = {
							west = "constructedobjects_01_45", north = "constructedobjects_01_44", east = nil, south = nil
						}
					}
				},
				tools = {"Base.BlowTorch", "Base.WeldingMask", "Base.WeldingRods"},
				primaryItem = "Base.BlowTorch",
				secondaryItem = "Base.WeldingMask",
				use = {["Base.BlowTorch"] = 7, ["Base.WeldingRods"] = 3},
				requirements = { any = { MetalWelding = { level = 1, time = 90 } } },
				gameRecipe = "Make Metal Containers",
				data = {
					canBeAlwaysPlaced = true,
					renderFloorHelper = true,
				},
				modData = {}
			},
			ContextMenu_Metal_Shelves = {
				name = "ContextMenu_Metal_Shelves",
				resultClass = "ISSimpleFurniture",
				ingredients = {
					["Base.MetalPipe"] = 2,
					["Base.SmallSheetMetal"] = 1,
					["Base.ScrapMetal"] = 1
				},
				images = {
					MetalWelding = {
						[0] = {
							west = "furniture_shelving_01_29", north = "furniture_shelving_01_28", east = nil, south = nil
						}
					}
				},
				tools = {"Base.BlowTorch", "Base.WeldingMask", "Base.WeldingRods"},
				primaryItem = "Base.BlowTorch",
				secondaryItem = "Base.WeldingMask",
				use = {["Base.BlowTorch"] = 7, ["Base.WeldingRods"] = 3},
				requirements = { any = { MetalWelding = { level = 0, time = 30 } } },
				gameRecipe = "Make Metal Containers",
				data = {
					canBeAlwaysPlaced = true,
					renderFloorHelper = true,
				},
				modData = {}
			},
			ContextMenu_Metal_Counter = {
				name = "ContextMenu_Metal_Counter",
				resultClass = "ISWoodenContainer",
				ingredients = {
					["Base.MetalPipe"] = 2,
					["Base.SmallSheetMetal"] = 4,
					["Base.Hinge"] = 2
				},
				images = {
					MetalWelding = {
						[0] = {
							west = "fixtures_counters_01_35", north = "fixtures_counters_01_37", east = nil, south = nil
						}
					}
				},
				tools = {"Base.BlowTorch", "Base.WeldingMask", "Base.WeldingRods"},
				primaryItem = "Base.BlowTorch",
				secondaryItem = "Base.WeldingMask",
				use = {["Base.BlowTorch"] = 12, ["Base.WeldingRods"] = 6},
				requirements = { any = { MetalWelding = { level = 0, time = 90 } } },
				gameRecipe = "Make Metal Containers",
				data = {
					canBeAlwaysPlaced = true,
					renderFloorHelper = true,
				},
				modData = {}
			},
			ContextMenu_Metal_Counter_Corner = {
				name = "ContextMenu_Metal_Counter_Corner",
				resultClass = "ISWoodenContainer",
				ingredients = {
					["Base.MetalPipe"] = 2,
					["Base.SmallSheetMetal"] = 4,
					["Base.Hinge"] = 2
				},
				images = {
					MetalWelding = {
						[0] = {
							west = "fixtures_counters_01_34", north = "fixtures_counters_01_36", east = nil, south = nil
						}
					}
				},
				tools = {"Base.BlowTorch", "Base.WeldingMask", "Base.WeldingRods"},
				primaryItem = "Base.BlowTorch",
				secondaryItem = "Base.WeldingMask",
				use = {["Base.BlowTorch"] = 12, ["Base.WeldingRods"] = 6},
				requirements = { any = { MetalWelding = { level = 0, time = 90 } } },
				gameRecipe = "Make Metal Containers",
				data = {
					canBeAlwaysPlaced = true,
					renderFloorHelper = true,
				},
				modData = {}
			},
			ContextMenu_Metal_Small_Locker = {
				name = "ContextMenu_Metal_Small_Locker",
				resultClass = "ISWoodenContainer",
				ingredients = {
					["Base.MetalPipe"] = 3,
					["Base.SmallSheetMetal"] = 4,
					["Base.Hinge"] = 2
				},
				images = {
					MetalWelding = {
						[0] = {
							west = "furniture_storage_02_8", north = "furniture_storage_02_9", east = nil, south = nil
						}
					}
				},
				tools = {"Base.BlowTorch", "Base.WeldingMask", "Base.WeldingRods"},
				primaryItem = "Base.BlowTorch",
				secondaryItem = "Base.WeldingMask",
				use = {["Base.BlowTorch"] = 12, ["Base.WeldingRods"] = 6},
				requirements = { any = { MetalWelding = { level = 0, time = 90 } } },
				gameRecipe = "Make Metal Containers",
				data = {
					canBeAlwaysPlaced = true,
					renderFloorHelper = true,
				},
				modData = {}
			},
			ContextMenu_Metal_Big_Locker = {
				name = "ContextMenu_Metal_Big_Locker",
				resultClass = "ISWoodenContainer",
				ingredients = {
					["Base.MetalPipe"] = 8,
					["Base.SmallSheetMetal"] = 4,
					["Base.Hinge"] = 2
				},
				images = {
					MetalWelding = {
						[0] = {
							west = "furniture_storage_02_12", north = "furniture_storage_02_13", east = nil, south = nil
						}
					}
				},
				tools = {"Base.BlowTorch", "Base.WeldingMask", "Base.WeldingRods"},
				primaryItem = "Base.BlowTorch",
				secondaryItem = "Base.WeldingMask",
				use = {["Base.BlowTorch"] = 15, ["Base.WeldingRods"] = 7},
				requirements = { any = { MetalWelding = { level = 0, time = 90 } } },
				gameRecipe = "Make Metal Containers",
				data = {
					canBeAlwaysPlaced = true,
					renderFloorHelper = true,
				},
				modData = {}
			},
		},
	}	
};

local function addRecipes()
	for name,recipe in pairs(ABEVanillaMetalworking.Recipes) do
		ABE.Recipes[name] = recipe;
	end
end


Events.OnGameStart.Add(addRecipes)
Events.OnFillWorldObjectContextMenu.Remove(ISBuildMenu.doBuildMenu);

