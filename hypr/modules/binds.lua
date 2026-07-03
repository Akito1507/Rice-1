---------------------
---- MY PROGRAMS ----
---------------------

-- Set programs that you use
local terminal = "kitty"
local fileManager2 = "kitty yazi"
local fileManager = "nautilus -w"
local menu = "~/scripts/rofi-launch.sh"
local hyprshot = "hyprshot -m region"

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Essentials
hl.bind(mainMod .. " + C", hl.dsp.window.close()) --Close window
hl.bind(
	mainMod .. " + M",
	hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'")
) --Exit Hyprland

--Apps
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind("ALT + SPACE", hl.dsp.exec_cmd(menu)) --Menu
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager2)) --File Manager
hl.bind(mainMod .. " + SHIFT + S ", hl.dsp.exec_cmd(hyprshot)) --Screenshot
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exec_cmd(fileManager))

--Scripts
hl.bind(mainMod .. " + page_up", hl.dsp.exec_cmd("~/scripts/config-menu.sh")) --Opens config menu
hl.bind(mainMod .. " + HOME", hl.dsp.exec_cmd("~/scripts/master-selector.sh")) --Master switcher
hl.bind(mainMod .. " + page_down", hl.dsp.exec_cmd("~/scripts/wallpaper-selector.sh")) --Wallpaper switcher
hl.bind(mainMod .. " + escape", hl.dsp.exec_cmd("~/scripts/power.sh"))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("~/scripts/reload-config.sh")) --Reload configs

--Window management
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit")) -- dwindle only
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Move through windows
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i })) --Move Window to a workspace
end

-- Example special workspace (scratchpad)
--hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))
--hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
--hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
--hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"),
  { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),
 { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
  { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })

-- Requires playerctl
--hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
--hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
--hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
--hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
