return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        vim.keymap.set({ "n", "v" }, "<leader>e", ":Neotree<CR>")
        vim.keymap.set({ "n", "v" }, "<leader>r", ":Neotree close<CR>")

        vim.g.neo_tree_remove_legacy_commands = 1

        require("neo-tree").setup({
            filesystem = {
                follow_current_file = {
                    enabled = true,
                },
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        })
    end,
}
