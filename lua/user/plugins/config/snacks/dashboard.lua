---@diagnostic disable: missing-fields
---@module "snacks"
---@type snacks.dashboard.Config
return {
    width = 60,
    preset = {
        header = [[
_______ _______ _______ _______
||     |||     |||     |||     ||
||  N  |||  V  |||  I  |||  M  ||
||_____|||_____|||_____|||_____||
|/_____\|/_____\|/_____\|/_____\|
        ]],
        ---@type snacks.dashboard.Item[]
        keys = {
            { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
            { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },

            -- { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
            { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
            -- { icon = "󱓩 ", key = "b", desc = "Notes", action = function() require("zk.commands").get("ZkNotes")() end, }
        },

    },
    sections = {
        { section = "header", padding = 0, },
        -- { section = "keys",   padding = 0, },
        -- { section = "startup", padding = 4},
        {
            text = { { "Writing horrible code since 2007", hl = "header" }, },
            align = "center",
        },
    }
}
