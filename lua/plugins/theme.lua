return {
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false,    priority = 1000 },
    {
        "daltonmenezes/aura-theme",
        lazy = false,
        priority = 1000,
        config = function(plugin)
            vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
        end
    },
    { "uloco/bluloco.nvim",        lazy = false,     priority = 1000, dependencies = { "rktjmp/lush.nvim" }, },
    { "EdenEast/nightfox.nvim" },
    {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 999,
},
    {
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("night-owl").setup({
            bold = true,
            italics = true,
            underline = true,
            undercurl = true,
            transparent_background = true,
        })
    end,
}
}
