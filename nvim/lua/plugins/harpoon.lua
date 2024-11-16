return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
        -- require('harpoon').setup()
        local harpoon = require("harpoon")

        -- REQUIRED
        harpoon:setup()
        -- REQUIRED

        vim.keymap.set({ "n", "v" }, "<leader>a", function()
            harpoon:list():add()
        end)
        vim.keymap.set({ "n", "v" }, "<leader>g", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        vim.keymap.set({ "n", "v" }, "<leader>h", function()
            harpoon:list():select(1)
        end)
        vim.keymap.set({ "n", "v" }, "<leader>j", function()
            harpoon:list():select(2)
        end)
        vim.keymap.set({ "n", "v" }, "<leader>k", function()
            harpoon:list():select(3)
        end)
        vim.keymap.set({ "n", "v" }, "<leader>l", function()
            harpoon:list():select(4)
        end)
        vim.keymap.set({ "n", "v" }, "<leader>;", function()
            harpoon:list():select(5)
        end)

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set("n", "<leader>b", function() harpoon:list():prev() end)
        vim.keymap.set("n", "<leader>n", function() harpoon:list():next() end)
    end,
}
