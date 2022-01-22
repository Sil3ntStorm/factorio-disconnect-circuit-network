-- Copyright 2022 Sil3ntStorm https://github.com/Sil3ntStorm
--
-- Licensed under MS-RL, see https://opensource.org/licenses/MS-RL

data:extend{
    {
        type = 'custom-input',
        name = 'scd-control-tool',
        key_sequence = 'CONTROL + D',
        action = 'spawn-item',
        item_to_spawn = 'scd-tool-disconnect',
        technology_to_unlock = 'circuit-network',
    },
    {
        type = 'selection-tool',
        name = 'scd-tool-disconnect',
        icon = '__circuit-disconnect__/graphics/tool.png',
        icon_size = 32,
        flags = {'only-in-cursor', 'hidden', 'spawnable'},
        stack_size = 1,
        stackable = false,
        toggleable = false,
        show_in_library = false,
        subgroup = 'tool',
        selection_mode = {'any-entity', 'avoid-rolling-stock'},
        selection_color = { g = 0.6 },
        selection_cursor_box_type = 'entity',
        alt_selection_mode = {'any-entity', 'avoid-rolling-stock'},
        alt_selection_color = { r = 0.5 },
        alt_selection_cursor_box_type = 'entity',
    },
    {
        type = 'shortcut',
        name = 'scd-shortcut-disconnect',
        associated_control_input = 'scd-control-tool',
        action = 'spawn-item',
        item_to_spawn = 'scd-tool-disconnect',
        technology_to_unlock = 'circuit-network',
        icon =
        {
            filename = "__circuit-disconnect__/graphics/tool.png",
            priority = "extra-high-no-scale",
            size = 32,
            scale = 0.5,
            mipmap_count = 2,
            flags = {"gui-icon"}
        },
        small_icon =
        {
            filename = "__circuit-disconnect__/graphics/tool.png",
            priority = "extra-high-no-scale",
            size = 24,
            scale = 0.5,
            mipmap_count = 2,
            flags = {"gui-icon"}
        },
        disabled_small_icon =
        {
            filename = "__circuit-disconnect__/graphics/tool.png",
            priority = "extra-high-no-scale",
            size = 24,
            scale = 0.5,
            mipmap_count = 2,
            flags = {"gui-icon"}
        }
    }
}
