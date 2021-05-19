local gears = require('gears')
local icons = require('theme.icons')

local tags = {
  {
    icon = icons.firefox,
    -- type = 'chrome',
    -- defaultApp = 'google-chrome-stable',
    type = 'firefox',
    defaultApp = 'firefox --no-remote -p research',
    screen = 1
  },
  {
    icon = icons.code,
    type = 'code',
    defaultApp = 'emx',
    screen = 1
  },
  {
    icon = icons.arch,
    -- icon = icons.social,
    -- icon = icons.chrome,
    -- type = 'social',
    -- defaultApp = 'station',
    type = 'archey',
    screen = 1
  },
  {
    icon = icons.mail,
    type = 'files',
    defaultApp = 'thunar',
    screen = 1
  },
  {
    icon = icons.folder,
    type = 'folder',
    defaultApp = 'spotify',
    screen = 1
  },
  {
    icon = icons.music,
    type = 'music',
    defaultApp = '',
    screen = 1
  },
  {
    icon = icons.term,
    type = 'term',
    defaultApp = '',
    screen = 1
  },
  {
    icon = icons.social,
    type = 'any',
    defaultApp = '',
    screen = 1
  },
  {
    icon = icons.lab,
    type = 'any',
    defaultApp = '',
    screen = 1
  }
}

return tags
