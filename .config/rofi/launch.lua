#!/bin/lua

--- lists ---
local software = {
    {'󰙯', 'vesktop', 'vesktop'},
    {'󰈹', 'firefox', 'firefox'},
    {'', 'kitty', "kitty"},
    {'', 'steam', "steam"},
    {'', 'thunar', "thunar"},
    {'󰺵', 'retroarch', "retroarch"},
    {'󰒍', 'packet tracer', "packettracer"},
    {'', 'zathura', "zathura"},
    {'󱚻', 'network manager', "kitty nmtui"},
    {'󰏫', 'pixelorama', 'pixelorama'}
}
local games = {
    {'󱥋', 'stardew valley', 'steam steam://rungameid/413150'},
    {'󱥚', 'worldbox', 'steam steam://rungameid/1206650'},
    {'󱥼', 'luanti', 'luanti'},
    {'󰷚', 'minesweeper', 'gnome-mines'},
    {'󱤗', 'terraria', 'steam steam://rungameid/105600'}
}
--- ---

local args = {...}
local apps
if args[1] == 'software' then
    apps = software
else
    apps = games
end

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
