data.raw["utility-constants"]["default"].main_menu_simulations = data.raw["utility-constants"]["default"].main_menu_simulations or {}

local menu_simulations = data.raw["utility-constants"]["default"].main_menu_simulations

menu_simulations.sushi_vanilla_items = {
    save = "__SushiBeltMenuSimulation__/save.zip",
    init_file = '__SushiBeltMenuSimulation__/init.lua',
    length = 10 * 60
}
