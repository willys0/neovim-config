
return function(use)
    use {
        'ahmedkhalf/project.nvim',
        requires = {
            'nvim-telescope/telescope.nvim', 
        },
        config = function()
            require("project_nvim").setup {
                manual_mode = false,
                silent_chdir = false,
                scope_chdir = 'tab',

                -- Exclude "lsp"
                -- detection_methods = { "pattern "}
                ignore_lsp = { "gopls" }
            }
            require('telescope').load_extension('projects')
        end
    }
end
