return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "asm",
                "c",
                "cpp",
                "css",
                "dockerfile",
                "html",
                "java",
                "javascript",
                "json",
                "lua",
                "make",
                "nasm",
                "python",
                "rust",
                "sql",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
