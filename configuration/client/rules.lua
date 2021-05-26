local awful = require('awful')
local gears = require('gears')
local client_keys = require('configuration.client.keys')
local client_buttons = require('configuration.client.buttons')
local tags = require('configuration.tags.tags')

-- Rules
awful.rules.rules = {
  -- All clients will match this rule.
  {
    rule = {},
    properties = {
      focus = awful.client.focus.filter,
      raise = true,
      keys = client_keys,
      buttons = client_buttons,
      screen = awful.screen.preferred,
      placement = awful.placement.no_overlap+awful.placement.no_offscreen,
      -- placement = awful.placement.no_offscreen,
      -- floating = false,
      maximized = false,
      -- above = false,
      -- below = false,
      -- ontop = false,
      -- sticky = false,
      maximized_horizontal = false,
      maximized_vertical = false
    }
  },
  {
    rule_any = {name = {'QuakeTerminal'}},
    properties = {skip_decoration = true}
  },
  -- Titlebars
  {
    rule_any = {type = {'dialog'}, class = {'Wicd-client.py', 'calendar.google.com'}},
    properties = {
      placement = awful.placement.centered,
      ontop = true,
      floating = true,
      -- drawBackdrop = true,
      -- shape = function()
      --   return function(cr, w, h)
      --     gears.shape.rounded_rect(cr, w, h, 8)
      --   end
      -- end,
      skip_decoration = true
    }
  },

  -- Customize Apps
  { rule = { class = "krunner" },
    properties = { floating = true, sticky = true } },
  { rule = { class = "lxqt-panel" },
    properties = { floating = true, sticky = true } },
  { rule = { class = "plasmashell" },
    properties = { floating = true, sticky = true } },
  { rule = { class = "Firefox" },
    properties = { screen = 1, tag = "1" } },
  { rule = { class = "Sublime_text" },
    properties = { screen = 1, tag = "2" } },
  { rule = { class = "Atom" },
    properties = { screen = 1, tag = "2" } },
  { rule = { class = "Emacs" },
    properties = { screen = 1, tag = "2" } },
  { rule = { class = "Uzbl" },
    properties = { screen = 1, tag = "3" } },
  { rule = { class = "Chromium" },
    properties = { screen = 1, tag = "3" } },
  { rule = { class = "Thunderbird" },
    properties = { screen = 1, tag = "4" } },
  { rule = { class = "Zathura" },
    properties = { screen = 1, tag = "5" } },
  { rule = { class = "Okular" },
    properties = { screen = 1, tag = "5" } },
  { rule = { class = "libreoffice-writer" },
    properties = { screen = 1, tag = "5" } },
  { rule = { class = "Vlc" },
    properties = { screen = 1, tag = "6" } },
  { rule = { class = "MPlayer" },
    properties = { screen = 1, tag = "6" } },
  { rule = { class = "Sonata" },
    properties = { screen = 1, tag = "6" } },
  { rule = { class = "cantata" },
    properties = { screen = 1, tag = "6" } },
  { rule = { class = "Xfce4-terminal" },
    properties = { screen = 1, tag = "7" } },
  { rule = { class = "Terminal" },
    properties = { screen = 1, tag = "7" } },
  { rule = { class = "Terminator" },
    properties = { screen = 1, tag = "7" } },
  { rule = { class = "konsole" },
    properties = { screen = 1, tag = "7" } },
  { rule = { class = "Gnome-terminal" },
    properties = { screen = 1, tag = "7" } },
  { rule = { class = "OSD Lyrics" },
    properties = { floating = true } },
  { rule = { class = "Osdlyrics" },
    properties = { floating = true } },
  { rule = { class = "yakuake" },
    properties = { floating = true } },
  { rule = { class = "Franz" },
    properties = { screen = 1, tag = "8" } },
  { rule = { class = "Telegram" },
    properties = { screen = 1, tag = "8" } },
  { rule = { class = "Slack" },
    properties = { screen = 1, tag = "8" } },
  { rule = { class = "Pidgin" },
    properties = { screen = 1, tag = "8" } },
  { rule = { class = "Skype" },
    properties = { screen = 1, tag = "8" } },
  { rule = { class = "xpad" },
    properties = { screen = 1, tag = "9", floating = true, sticky = true } },
  { rule = { class = "Gnome-pomodoro" },
    properties = { screen = 1, tag = "9", floating = true, sticky = true } },
  { rule = { class = "Tasque" },
    properties = { screen = 1, tag = "9" } },
  { rule = { instance = "Whisker Menu" },
    properties = { floating = true } },
  { rule = { instance = "Wrapper-2.0" },
    properties = { floating = true } },
  { rule = { instance = "wrapper-2.0" },
    properties = { floating = true } }
  -- { rule = { instance = "xfdesktop" },
  --   properties = { floating = true } },
  -- Set Firefox to always map on tags.names number 2 of screen 1.
  -- { rule = { class = "Firefox" },
  --   properties = { screen = 1, tag = "2" } },
}
