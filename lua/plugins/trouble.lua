return function(use)
    use {
        'folke/trouble.nvim',
        requires = {
            'nvim-telescope/telescope.nvim',
        },
        config = function()
            require("trouble").setup {
            }
        end
    }
end
