return function(use)
    use {
        'mfussenegger/nvim-dap',
        requires = {
            'leoluz/nvim-dap-go'
        },
        config = function()
            require('dap-go').setup()
        end
    }
end
