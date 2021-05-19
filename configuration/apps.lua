local filesystem = require('gears.filesystem')
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi

return {
  -- List of apps to start by default on some actions
  default = {
    terminal = 'terminal',
    -- terminal = 'alacritty',
    editor = 'emx',
    -- editor = 'code',
    rofi = 'rofi -dpi ' .. get_dpi() .. ' -width ' .. with_dpi(400) .. ' -show drun -theme ' .. filesystem.get_configuration_dir() .. '/configuration/rofi.rasi',
    -- rofi = 'rofi -show drun -theme ' .. filesystem.get_configuration_dir() .. '/configuration/rofi.rasi',
    lock = 'i3lock-fancy-rapid 5 3 -k --timecolor=ffffffff --datecolor=ffffffff',
    quake = 'terminal'
  },
  -- List of apps to start once on start-up
  run_on_start_up = {
    -- 'blueberry-tray', -- Bluetooth tray icon
    'nm-applet --sm-disable', -- Network Manager tray icon
    'blueman-applet', -- Bluetooth tray icon
--    'xfce4-power-manager', -- Power manager
--    'xfsettingsd',
--    'xfce4-screensaver',
--    'xfce4-panel',
--    '/usr/lib/kdeconnectd',
--    '/usr/bin/kdeconnect-indicator',
    'compton --config ' .. filesystem.get_configuration_dir() .. '/configuration/compton.conf',
    -- 'env QT_AUTO_SCREEN_SCALE_FACTOR=2 QT_SCALE_FACTOR=2 synergy',
    'lxqt-powermanagement',
    '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)' -- credential manager,
  }
}
