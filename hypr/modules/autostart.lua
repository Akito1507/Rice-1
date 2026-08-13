-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
--
hl.on("hyprland.start", function()
	hl.exec_cmd("waybar")
	hl.exec_cmd("swaync")
	hl.exec_cmd("awww-daemon")
	hl.exec_cmd("hyprctl dispatch 'hl.dsp.focus({ workspace = 1 })'")
	hl.exec_cmd("/./usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
	hl.exec_cmd("/.$HOME/scripts/xdg-portal.sh")
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("rclone mount gdrive: ~/Documents/GoogleDrive --vfs-cache-mode writes")
	hl.exec_cmd("rclone mount gphotos: ~/Pictures/GooglePhotos --vfs-cache-mode writes")
end)
