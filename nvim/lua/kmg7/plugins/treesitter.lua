--credit treeman
return {
    {
        'nvim-treesitter/nvim-treesitter',
        event = { 'BufReadPre', 'BufNewFile' },
        cmd = { 'TSInstallInfo', 'TSInstall' },
        config = function()
            local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')

            if not status_ok then
                return
            end

            treesitter.setup({
                ensure_installed = {
                    "bash",
                    "css",
                    "csv",
                    "dockerfile",
                    "git_config",
                    "git_rebase",
                    "gitattributes",
                    "gitcommit",
                    "gitignore",
                    "html",
                    "http",
                    "javascript",
                    "json",
                    "lua",
                    "markdown",
                    "markdown_inline",
                    "python",
                    "regex",
                    "rust",
                    "sql",
                    "typescript",
                    "vim",
                    "vue",
                    "xml",
                    "yaml",
                    "go"
                },
                sync_install = false,
                auto_install = false,
                ignore_install = {},
                highlight = {
                    enable = true
                },
                context_commentstring = {
                    enable = true,
                    autocmd = false
                },
                matchup = {
                    enable = true,
                },
                autopairs = {
                    enable = true
                },
                autotag = {
                    enable = true
                },
                indent = {
                    enable = true,
                    disable = { 'go' }
                }
            })
        end

    }
}

