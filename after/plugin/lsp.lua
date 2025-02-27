local lsp_zero = require("lsp-zero")

local lsp_attach = function(_, bufnr)
    lsp_zero.default_keymaps({ buffer = bufnr })
end

lsp_zero.set_sign_icons({
    error = "✘",
    warn = "▲",
    hint = "⚑",
    info = "»",
})

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

require("mason-lspconfig").setup({
    ensure_installed = {
        "clangd",
        "eslint",
        "lua_ls",
        "jedi_language_server",
        "ruff",
        "rust_analyzer",
        "tailwindcss",
        "ts_ls",
    },
    handlers = {
        function(server_name)
            require("lspconfig")[server_name].setup({
                on_attach = lsp_attach,
            })
        end,
    },
})

---- cmp ----

local cmp = require("cmp")
local cmp_format = require('lsp-zero').cmp_format({details = true})
cmp.setup({
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = "select" }),
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = "select" }),
        ["<C-Space>"] = cmp.mapping.complete(),
    }),
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    formatting = cmp_format,
})

