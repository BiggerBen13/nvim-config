return {
    'vyfor/cord.nvim',
    event = "VeryLazy",
    branch = 'client-server',
    build = ':Cord update',
    opts = {}, -- calls require('cord').setup()
}
