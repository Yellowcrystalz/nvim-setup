return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({
                python = { executable = "/usr/bin/python3"}
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "asm_lsp",
                    "clangd",
                    "cssls",
                    "emmet_language_server",
                    "html",
                    "jdtls",
                    "lua_ls",
                    "pylsp",
                    "rust_analyzer",
                    "sqlls",
                    "ts_ls",
                }
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            local function setup_lsp(server, opts)
                opts.capabilities = capabilities
                lspconfig[server].setup(opts)
            end

            setup_lsp("asm_lsp", {})
            setup_lsp("clangd", {})
            setup_lsp("cssls", {})
            setup_lsp("emmet_language_server", {})
            setup_lsp("html", {})
            setup_lsp("jdtls", {})
            setup_lsp("lua_ls", {})
            setup_lsp("pylsp", {
                settings = {
                    pylsp = {
                        configurationSources = {"pycodestyle"},
                        plugins = {
                            pycodestyle = {
                                maxLineLength = 120,
                            },
                        },
                    },
                },
            })
            setup_lsp("rust_analyzer", {})
            setup_lsp("sqlls", {})
            setup_lsp("ts_ls", {})

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set({ 'n' }, '<leader>ca', vim.lsp.buf.code_action, {})
        end,
    }
}
