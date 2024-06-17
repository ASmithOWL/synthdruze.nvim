# Synthdruze.nvim
# Install

## Lazy

Simplest possible way:

```lua
{
    "asmithowl/synthdruze.nvim",
}
-- run :colorscheme synthdruze or synthdruze-transparent when feeling like it
```

If you would like to run this as your main colorscheme, follow lazy.nvim instructions:

```lua
{
    "asmithowl/synthdruze.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("synthdruze")
        -- transparent version
        -- vim.cmd.colorscheme("synthdruze-transparent")
    end
}
```

## Config
If something stabs you in the eye, you can use setup with options and modify colors and groups.

```lua
{
    "asmithowl/synthdruze.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000,
    config = function()
        local synthdruze = require("synthdruze")
        synthdruze.setup({
            transparent = false,
            overrides = {
                -- override any group
                Identifier = { fg = "#f22f52" },
            },
            palette = {
                -- override palette colors, take a peek at synthdruze/palette.lua
                bg0 = "#040404",
            },
        })
        synthdruze.load()
    end,
}
```
