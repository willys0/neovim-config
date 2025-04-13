return function(use)
    use {
        'stevearc/aerial.nvim', 
        config = function()
            require("aerial").setup{}
        end
    }
end
