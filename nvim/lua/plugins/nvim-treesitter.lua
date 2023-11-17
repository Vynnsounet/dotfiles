local config = function()
    require("nvim-treesitter.configs").setup({
        indent = {
            enable = true,
        },
        autotag = {
            enable = true,
        },
        ensure_installed = {
            "markdown",
            "json",
            "javascript",
            "typescript",
            "yaml",
            "css",
            "html",
            "bash",
            "lua",
            "dockerfile",
            "solidity",
            "gitignore",
            "python",
            "vue",
            "c",
            "cpp",
        },
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = true,
        },
    })
end

return {
    "https://github.com/nvim-treesitter/nvim-treesitter",
    lazy = false,
    config = config,
}
