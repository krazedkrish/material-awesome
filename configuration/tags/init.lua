local awful = require('awful')
local tags = require('configuration.tags.tags')

awful.layout.layouts = {
  awful.layout.suit.tile,
  -- -- awful.layout.suit.tile.left,
  awful.layout.suit.tile.bottom,
  -- -- awful.layout.suit.tile.top,
  -- -- awful.layout.suit.fair,
  -- awful.layout.suit.fair.horizontal,
  -- -- awful.layout.suit.spiral,
  -- awful.layout.suit.spiral.dwindle,
  -- awful.layout.suit.max,
  -- awful.layout.suit.spiral,
  -- awful.layout.suit.max.fullscreen,
  -- awful.layout.suit.corner.nw,
  -- awful.layout.suit.corner.ne,
  awful.layout.suit.corner.sw,
  --awful.layout.suit.corner.se,
  awful.layout.suit.magnifier,

 awful.layout.suit.floating
}

awful.screen.connect_for_each_screen(
  function(s)
    for i, tag in pairs(tags) do
      awful.tag.add(
        i,
        {
          icon = tag.icon,
          icon_only = true,
          layout = awful.layout.suit.tile,
          gap_single_client = false,
          gap = 4,
          screen = s,
          defaultApp = tag.defaultApp,
          selected = i == 1
        }
      )
    end
  end
)

_G.tag.connect_signal(
  'property::layout',
  function(t)
    local currentLayout = awful.tag.getproperty(t, 'layout')
    if (currentLayout == awful.layout.suit.max) then
      t.gap = 0
    else
      t.gap = 4
    end
  end
)
