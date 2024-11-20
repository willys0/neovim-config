return function(use)
    use {
        'NOSDuco/remote-sshfs.nvim',
        dependencies = {
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            require("remote-sshfs").setup {
                connections = {
                    ssh_configs = {
                        vim.fn.expand "$HOME" .. "/.ssh/config",
                        "/etc/ssh/ssh_config"
                    },
                    sshfs_args = {
                        "-o reconnect",
                        "-o ConnectTimeout=5"
                    },
                },
                mounts = {
                    base_dir = vim.fn.expand "$HOME" .. "/.sshfs/",
                    unmount_on_exit = true
                },
                handlers = {
                    on_connect = {
                        change_dir = true,
                    },
                    on_disconnect = {
                        clean_mount_folders = false,
                    }
                },
                ui = {
                    confirm = {
                        connect = false,
                        change_dir = false
                    }
                },
                log = {
                    enable = true,
                    truncate = true
                }

            }
        end
    }
end
