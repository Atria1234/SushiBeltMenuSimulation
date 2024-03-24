require('init')

data:extend({
    -- {
    --     type = 'bool-setting',
    --     name = SushiBeltMenuSimulation.setting_names.normal_belts,
    --     setting_type = 'startup',
    --     default_value = true,
    --     order = '01'
    -- },
    -- {
    --     type = 'bool-setting',
    --     name = SushiBeltMenuSimulation.setting_names.fast_belts,
    --     setting_type = 'startup',
    --     default_value = true,
    --     order = '02'
    -- },
    -- {
    --     type = 'bool-setting',
    --     name = SushiBeltMenuSimulation.setting_names.express_belts,
    --     setting_type = 'startup',
    --     default_value = true,
    --     order = '03'
    -- },

    {
        type = 'bool-setting',
        name = SushiBeltMenuSimulation.setting_names.straight,
        setting_type = 'startup',
        default_value = true,
        order = '04'
    },
    {
        type = 'bool-setting',
        name = SushiBeltMenuSimulation.setting_names.diagonal,
        setting_type = 'startup',
        default_value = true,
        order = '05'
    },
    {
        type = 'bool-setting',
        name = SushiBeltMenuSimulation.setting_names.circular,
        setting_type = 'startup',
        default_value = true,
        order = '06'
    }
})