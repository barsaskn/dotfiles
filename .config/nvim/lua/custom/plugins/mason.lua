return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = { "lua-language-server", "bash-language-server", "clangd", "gopls", "pyright", "typescript-language-server", "rust-analyzer" }
    }
}
