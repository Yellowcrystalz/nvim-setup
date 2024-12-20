-- plugins/telescope.lua:
return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local builtin = require("telescope.builtin")
            local home = os.getenv("HOME")

            vim.keymap.set("n", "<leader>ff", function()
                builtin.find_files({ cwd = home, hidden = true })
            end, {})
            vim.keymap.set("n", "<leader>fg", function()
                builtin.live_grep({
                    additional_args = function()
                        return { "--hidden" }
                    end,
                })
            end, {})
            -- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
            -- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
                preview = false,
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}

