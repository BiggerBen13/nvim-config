# Config Explanation

Directory layout
```
.
├── after
│   ├── ftplugin
│   └── syntax
├── init.lua
├── lazy-lock.json
└── lua
    └── user
        ├── core
        │   ├── autocommands
        │   ├── config.lua
        │   ├── init.lua
        │   ├── keybindings.lua
        │   └── lazy.lua
        └── plugins
            ├── config
            │   ├── lspconfig.lua
            │   ├── lsps
            │   │   └── tinymist.lua
            │   ├── luasnip.lua
            │   ├── mason.lua
            │   ├── snacks
            │   │   ├── dashboard.lua
            │   │   └── snacks.lua
            │   └── treesitter.lua
            ├── conform.lua
            ├── friendlysnippets.lua
            ├── fzf-lua.lua
            ├── lspconfig.lua
            ├── luasnip.lua
            ├── mason.lua
            ├── oil.lua
            ├── rustacean.lua
            ├── snacks.lua
            ├── surround.lua
            └── treesitter.lua
```

> [!NOTE]
> SOME FILES REMOVED BECAUSE THEY ARE REALLY SPECIFIC

## Startup

The init.lua file is really short it only contains the following:

```lua
require "user.core"
```

It loads the `lua/user/core` directory (the lua directory can be ommitted because neovims lua interpreter considers it part of the project root), requiring a directory automatically executes the `init.lua` in that directory.

`user.core.init.lua` contains the following:

```lua
require("user.core.config")
require("user.core.keybindings")
require("user.core.autocommands.init")
require("user.core.lazy")
```

It loads the different "modules" in core. 

### Config

`config` sets some global vim options like the tab width, relative line numbers for easier vim motions and some other options.
To get more information about each option use `help topic` (vim contains it's own documentation, it's really useful).

### Keybindings

`keybindings` sets some convenient global keybindings I like.
The `map` function is a local alias to [`vim.keymap.set`][1]

It sets `[d` and `]d` to jump to the previous and next lsp diagnostic as well as `<leader>gp` and `<leader>gn` in order to go to the previous and next buffer.

### Autocommands

`autocommands` are a bit advanced, they utilize builtin, or custom, Neovim events (see `help events`, `help autocmd`, as well as [lua-autocommands][2]) to automatically execute code upon some event. 
The most important one here the `LspAttach` auto command, it configures all lsp-related key binds, when a lsp attaches to a buffer the key binds are personal preference, you probably won't frequently using most of them, but they can be helpful once in a while.

> [!NOTE]
Some of the key-binds use alternatives provided by other plugins

### Plugins

`lazy` bootstraps the [lazy.nvim](https://lazy.folke.io/) plugin manager.
We combine the various tables to make the configuration easier to read.
The main thing to notice is that we set `opts.default.lazy` to `true` this makes all plugins lazy by default, meaning they won't be loaded unless some event is fired. 
These can be builtin events or [events defined by lazy](https://lazy.folke.io/usage#-user-events).

#### Plugin Spec

Lazy expects the files in `spec.import` to return a table following the [lazy plugin spec](https://lazy.folke.io/spec).
That's what each file in `lua/user/plugins` does, it returns a table, as an example lets look at `lua.user.plugins.blink` as an example:

```lua
return {
    "saghen/blink.cmp",
    version = "*",
    opts = require "user.plugins.config.blink",
    event = "InsertEnter",
    dependencies = {
        "saghen/blink.compat"
    },
}
```

It installs the [blink.cmp](https://cmp.saghen.dev/) plugin, which adds autocompletion to my Neovim, there are alternatives but none as good as blink, in my opinion.
We tell it to use any version of the plugin using `version = "*"`.
The `InsertEnter` event is set to load the plugin, so it loads the first time I enter insert mode.
I add the `saghen/blink.compat` plugin as a dependency, as some of my plugins do not yet fully support blink, as it is a relatively new plugin.
The dependency is loaded before the actual plugin.
The `opts` field delivers arguments to the function which starts the plugin (usually `require("insert_plugin_module).setup(opts)`), the options are usually documented either in a plugins documentation or readme, sometimes they also provide a Vimdoc help file.

For plugins that require more than a few options I prefer configure them in an external file, I do this by creating a file with the same name as the plugin in `user.plugins.config`.

## Important plugins

- [`nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig) provides default configurations for almost every language server you can think of.
- [`blink.cmp`](https://github.com/Saghen/blink.cmp) adds inline autocompletion, it provides several mapping styles, see [keymap-presets](https://cmp.saghen.dev/configuration/keymap#presets)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) adds beautiful highlighting to neovim using treesitter
- [mason.nvim](https://github.com/williamboman/mason.nvim) a lsp-package-manager, allows you to easily install lsps (I prefer to actually install lsps locally, but I find it very convenient to discover new lsps using mason)
    - [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim) bridges mason and lspconfig (I think I could theoretically ditch it)

## Very cool plugins I recommend

- [oil.nvim](https://github.com/stevearc/oil.nvim) allows you to edit your filesystem as if it were a neovim-buffer
- [fzf-lua](https://github.com/ibhagwan/fzf-lua) a fuzzy finder using fzf as a backend, I used to use [telescope](https://github.com/nvim-telescope/telescope.nvim), but find fzf to be more modular
- [conform.nvim](https://github.com/stevearc/conform.nvim) allows you to configure formatters
- [rustaceanvim](https://github.com/mrcjkb/rustaceanvim) more functionality from rust analyzer
- [trouble.nvim](https://github.com/folke/trouble.nvim) lsp info in a popup window (I only use diagnostics usually)
- [snacks.nvim](https://github.com/folke/snacks.nvim) Lot's of snacks, (I use it for dashboard and notify, and have everything else disabled, there's a lot of functionality though)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) snippets for neovim
- [mini](https://github.com/echasnovski/mini.nvim) 40 lua modules to use in your neovim config
    - **mini.surround**: Helix like surround capabilities 
    - **mini.pairs**: auto pairs parentheses, brackets and whatever you want it to





[1]: https://neovim.io/doc/user/lua.html#vim.keymap.set()
[2]: https://neovim.io/doc/user/lua-guide.html#_autocommands
