SushiBeltMenuSimulation = {}

SushiBeltMenuSimulation.mod_name = 'SushiBeltMenuSimulation'

--- @param setting_name string
--- @return string
local function prefix_setting_name(setting_name)
    return SushiBeltMenuSimulation.mod_name..'__'..setting_name
end

SushiBeltMenuSimulation.setting_names = {
    normal_belts = prefix_setting_name('normal-belts'),
    fast_belts = prefix_setting_name('fast-belts'),
    express_belts = prefix_setting_name('express-belts'),

    straight = prefix_setting_name('straight'),
    diagonal = prefix_setting_name('diagonal'),
    circular = prefix_setting_name('circular'),
}

--- @param setting_name string
--- @return boolean
function SushiBeltMenuSimulation.get_setting_value(setting_name)
    local setting = settings.startup[setting_name]
    return setting and setting.value == true
end
