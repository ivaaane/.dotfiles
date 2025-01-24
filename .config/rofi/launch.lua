#!/bin/lua

local apps = {
    {'󰙯', 'vesktop', 'vesktop'},
    {'󰈹', 'librewolf', 'librewolf'},
    {'', 'kitty', "kitty"},
    {'', 'steam', "steam"},
    {'', 'thunar', "thunar"},
    {'󰒍', 'packet tracer', "packettracer"},
    {'', 'zathura', "zathura"},
    {'󱚻', 'network manager', "kitty nmtui"},
    {'󰏫', 'aseprite', 'aseprite'},
    {'', 'qutebrowser', 'qutebrowser'},
}

table.sort(apps, function(a, b)
    return a[2] < b[2]
end)

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
            os.execute(app[3] .. ' &')
            break
        end
    end
end
