#!/bin/lua

local apps = {
    {'', '', ''},
    {'󰏭', 'aseprite', 'aseprite &'},
    {'', 'discord', 'vesktop &'},
    {'', 'godot', 'godot &'},
    {'', 'krita', 'krita &'},
    {'', 'packet tracer', "packettracer &"},
    {'', 'steam', "steam &"},
}

local rofi = {}
for k, v in ipairs(apps) do
    table.insert(rofi, v[1] .. '  ' .. v[2])
end

local handle = io.popen('echo "' .. table.concat(rofi, '\n') .. '" | rofi -dmenu -i', 'r')
local selected = handle:read('*l')
handle:close()

if selected then
    for _, app in ipairs(apps) do
        if selected == app[1] .. '  ' .. app[2] then
            os.execute(app[3])
            break
        end
    end
end
