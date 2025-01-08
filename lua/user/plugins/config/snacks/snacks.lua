---@module "snacks"
---@type snacks.Config
---@class snacks.Config
---@field animate? snacks.animate.Config
---@field bigfile? snacks.bigfile.Config
---@field dashboard? snacks.dashboard.Config
---@field dim? snacks.dim.Config
---@field gitbrowse? snacks.gitbrowse.Config
---@field indent? snacks.indent.Config
---@field input? snacks.input.Config
---@field lazygit? snacks.lazygit.Config
---@field notifier? snacks.notifier.Config
---@field profiler? snacks.profiler.Config
---@field quickfile? snacks.quickfile.Config
---@field scope? snacks.scope.Config
---@field scratch? snacks.scratch.Config
---@field scroll? snacks.scroll.Config
---@field statuscolumn? snacks.statuscolumn.Config
---@field terminal? snacks.terminal.Config
---@field toggle? snacks.toggle.Config
---@field win? snacks.win.Config
---@field words? snacks.words.Config
---@field zen? snacks.zen.Config
---@field styles? table<string, snacks.win.Config>
require "snacks".setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    dashboard = require "user.plugins.config.snacks.dashboard",
    indent = { enabled = false },
    input = { enabled = false },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = false },
    dim = { enabled = false },
    zen = { enabled = false },
    gitbrowse = { enabled = false },
    lazygit = { enabled = true },
    profiler = { enabled = false },
    scope = { enabled = false },
    scratch = { enabled = false },
    styles = { enabled = false },
    terminal = { enabled = false },
    animate = { enabled = false },
    toggle = { enabled = false },
    win = { enabled = false },
}
