-- Copyright 2022 Sil3ntStorm https://github.com/Sil3ntStorm
--
-- Licensed under MS-RL, see https://opensource.org/licenses/MS-RL

local function doSelectedEntity(entity, plr, mode)
    if (entity.force ~= plr.force or not entity.valid) then
        return
    end

    local green = mode == 'both' or mode == 'green'
    local red = mode == 'both' or mode == 'red'
    if (red) then
        entity.disconnect_neighbour(defines.wire_type.red)
    end
    if (green) then
        entity.disconnect_neighbour(defines.wire_type.green)
    end
end

local function doSelection(data, is_alt)
    if (data.item ~= 'scd-tool-disconnect') then
        return
    end
    plr = game.get_player(data.player_index)
    if (not plr.force.technologies['circuit-network'].researched) then
        return
    end
    local conf = settings.get_player_settings(plr)
    local conf_value = 'both'
    if (is_alt) then
        conf_value = conf['scd-alt-select-mode'].value
    else
        conf_value = conf['scd-select-mode'].value
    end
    for _, entity in pairs(data.entities) do
        doSelectedEntity(entity, plr, conf_value)
    end
end

local function onSelection(data)
    doSelection(data, false)
end

local function onAltSelection(data)
    doSelection(data, true)
end

script.on_event(defines.events.on_player_selected_area, onSelection)
script.on_event(defines.events.on_player_alt_selected_area, onAltSelection)
