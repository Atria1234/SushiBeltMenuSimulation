require('init')

data.raw['utility-constants']['default'].main_menu_simulations = data.raw['utility-constants']['default'].main_menu_simulations or {}

local menu_simulations = data.raw['utility-constants']['default'].main_menu_simulations

--- @param belt_type 'yellow' | 'red' | 'blue'
--- @param variation 'straight' | 'diagonal' | 'circular'
--- @param direction string
--- @return data.SimulationDefinition
local function create_menu_simulation(belt_type, variation, direction)
    return {
        save = '__SushiBeltMenuSimulation__/saves/'..belt_type..'/'..variation..'/'..direction..'.zip',
        init = 'game.tick_paused = false',
        length = 10 * 60,
        checkboard = true
    }
end

local function create_simulations(belt_type, setting_name)
    if SushiBeltMenuSimulation.get_setting_value(SushiBeltMenuSimulation.setting_names.straight) then
        menu_simulations[setting_name..'_straight_up'] = create_menu_simulation(belt_type, 'straight', 'up')
        menu_simulations[setting_name..'_straight_down'] = create_menu_simulation(belt_type, 'straight', 'down')
        menu_simulations[setting_name..'_straight_left'] = create_menu_simulation(belt_type, 'straight', 'left')
        menu_simulations[setting_name..'_straight_right'] = create_menu_simulation(belt_type, 'straight', 'right')
    end

    if SushiBeltMenuSimulation.get_setting_value(SushiBeltMenuSimulation.setting_names.diagonal) then
        menu_simulations[setting_name..'_diagonal_top_left'] = create_menu_simulation(belt_type, 'diagonal', 'top_left')
        menu_simulations[setting_name..'_diagonal_top_right'] = create_menu_simulation(belt_type, 'diagonal', 'top_right')
        menu_simulations[setting_name..'_diagonal_bottom_left'] = create_menu_simulation(belt_type, 'diagonal', 'bottom_left')
        menu_simulations[setting_name..'_diagonal_bottom_right'] = create_menu_simulation(belt_type, 'diagonal', 'bottom_right')
    end

    if SushiBeltMenuSimulation.get_setting_value(SushiBeltMenuSimulation.setting_names.circular) then
        menu_simulations[setting_name..'_circular_clockwise'] = create_menu_simulation(belt_type, 'circular', 'clockwise')
        menu_simulations[setting_name..'_circular_counter_clockwise'] = create_menu_simulation(belt_type, 'circular', 'counter_clockwise')
    end
end

create_simulations('yellow', SushiBeltMenuSimulation.setting_names.normal_belts)

-- if SushiBeltMenuSimulation.get_setting_value(SushiBeltMenuSimulation.setting_names.normal_belts) then
--     create_simulations('yellow', SushiBeltMenuSimulation.setting_names.normal_belts)
-- end
-- if SushiBeltMenuSimulation.get_setting_value(SushiBeltMenuSimulation.setting_names.fast_belts) then
--     create_simulations('red', SushiBeltMenuSimulation.setting_names.fast_belts)
-- end
-- if SushiBeltMenuSimulation.get_setting_value(SushiBeltMenuSimulation.setting_names.express_belts) then
--     create_simulations('blue', SushiBeltMenuSimulation.setting_names.express_belts)
-- end
