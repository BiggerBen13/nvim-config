local dap = require "dap"
local dui = require "dapui"

require "dapui".setup()


do -- {{{ Debugger Setup
    local code_lldb_exec = vim.fn.exepath "code-lldb"

    if code_lldb_exec ~= "" then
        dap.adapters.codelldb = {
            type = "server",
            port = "${port}",
            executable = {
                command = code_lldb_exec,
                args = { "--port", "${port}" },
            }
        }
    end

    local lldb_exec = vim.fn.exepath "lldb-vscode"

    if lldb_exec ~= "" then
        dap.adapters.lldb = {
            type = "executable",
            command = lldb_exec,
            name = "lldb"
        }

        dap.configurations.zig = {
            {
                name = "Launch",
                type = "lldb",
                request = "launch",
                program = function()
                    os.execute("zig build >> /dev/null");
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = false,
                args = {},
            },
        }

        dap.configurations.c = {
            {
                name = "Launch",
                type = "lldb",
                request = "launch",
                program = function()
                    return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                end,
                cwd = '${workspaceFolder}',
                stopOnEntry = true,
                args = {},
            },
        }
    end
end -- }}}

do  -- {{{ Debug mappings
    local map = vim.keymap.set
    map("n", "<leader>bb", dap.toggle_breakpoint)
    map("n", "<leader>gb", dap.run_to_cursor)

    map("n", "<leader>?", function()
        require("dapui").eval(nil, { enter = true })
    end)

    map("n", "<leader>bc", dap.continue)
    map("n", "<leader>br", dap.restart)
    map("n", "<leader>bsi", dap.step_into)
    map("n", "<leader>bso", dap.step_out)
    map("n", "<leader>bsO", dap.step_over)
    map("n", "<leader>bsb", dap.step_back)
    map("n", "<leader>bq", dap.close)
end -- }}}

-- Auto UI {{{
dap.listeners.before.attach.dapui_config = function()
    dui.open()
end

dap.listeners.before.launch.dapui_config = function()
    dui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
    dui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
    dui.close()
end -- }}}

-- vim:foldmethod=marker
