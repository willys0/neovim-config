return function(use)
    use {
        'rmagatti/auto-session',
        config = function()
            require("auto-session").setup {
                enabled = false,
                auto_save = true,
                auto_create = true,
                use_git_branch = true,
                --auto_create = function()
                --    local cmd = 'git rev-parse --is-inside-work-tree'
                --    return vim.fn.system(cmd) == 'true\n'
                --end,
                auto_restore = false,
            }
        end
    }
end
