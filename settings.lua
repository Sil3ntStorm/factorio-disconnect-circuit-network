-- Copyright 2022 Sil3ntStorm https://github.com/Sil3ntStorm
--
-- Licensed under MS-RL, see https://opensource.org/licenses/MS-RL

data:extend({
    {
        name = 'scd-select-mode',
        type = 'string-setting',
        setting_type = 'runtime-per-user',
        default_value = 'both',
        allowed_values = {'both', 'red', 'green'},
        order = 'a'
    },
    {
        name = 'scd-alt-select-mode',
        type = 'string-setting',
        setting_type = 'runtime-per-user',
        default_value = 'both',
        allowed_values = {'both', 'red', 'green'},
        order = 'b'
    },
})
