return {
    {
        'dracula/vim', as = 'dracula', -- Dracula theme
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("dracula")
        end
    },
}
