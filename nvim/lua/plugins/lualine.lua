return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "shaunsingh/moonlight.nvim",
    },

    config = function()
        local function get_harpoon_indicator(harpoon_entry)
            return vim.fn.fnamemodify(harpoon_entry.value or "", ':t')
        end

        require("lualine").setup({
            options = {
                theme = "moonlight",
                icons_enabled = true,
            },
            sections = {
                lualine_c = {
                    {
                        "harpoon2",
                        indicators = {
                            get_harpoon_indicator,
                            get_harpoon_indicator,
                            get_harpoon_indicator,
                            get_harpoon_indicator,
                            get_harpoon_indicator,
                        },
                        active_indicators = {
                            get_harpoon_indicator,
                            get_harpoon_indicator,
                            get_harpoon_indicator,
                            get_harpoon_indicator,
                            get_harpoon_indicator,
                        },
                        color_active = { fg = "#5CB4FC" },
                        _separator = " | ",
                        no_harpoon = "Harpoon not loaded",
                    },
                },
            },
        })
    end,
}
