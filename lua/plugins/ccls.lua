
return function(use)
    use {
        'ranjithshegde/ccls.nvim', -- C/C++ language server
        config = function()
            require("ccls").setup({
                lsp = {
                    use_defaults = true
                }
            })
        end
    }
end
