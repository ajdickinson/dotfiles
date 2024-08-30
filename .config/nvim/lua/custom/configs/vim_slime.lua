-- custom/configs/vim_slime.lua
return {
    -- Initialization code:
    init = function()
        require('otter.tools.functions').is_otter_language_context 'python' -- Assuming you have the 'otter' plugin

        vim.cmd [[
        let g:slime_dispatch_ipython_pause = 100

        function SlimeOverride_EscapeText_quarto(text)
            -- ... (rest of the function from the original code)
        endfunction
        ]]

        vim.g.slime_target = 'neovim'
        vim.g.slime_python_ipython = 1
    end,

    -- Configuration code (keymaps, etc.):
    config = function()
        local function mark_terminal()
            vim.g.slime_last_channel = vim.b.terminal_job_id
        end

        local function set_terminal()
            vim.b.slime_config = { jobid = vim.g.slime_last_channel }
        end

        vim.keymap.set('n', '<leader>cm', mark_terminal, { desc = '[m]ark terminal' })
        vim.keymap.set('n', '<leader>cs', set_terminal, { desc = '[s]et terminal' })
    end,
}

