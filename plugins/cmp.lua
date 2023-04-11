local kind_icons = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = "",
}

local function border(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }
end


return {
  "hrsh7th/nvim-cmp",
  opts = {
    performance = {
      -- debounce = 300,
      -- throttle = 120,
      -- fetching_timeout = 100
    },
    window = {
      completion = {
        border = border "CmpBorder",
        side_padding = 0,
        winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:PmenuSel",
        scrollbar = false,
      },
      documentation = {
        border = border "CmpDocBorder",
        winhighlight = "Normal:CmpDoc",
      },
    },
    formatting = {
      fields = { "abbr", "kind", "menu" },
      format = function(entry, vim_item)
        local shorten_abbr = string.sub(vim_item.abbr, 1, 30)
        if shorten_abbr ~= vim_item.abbr then
          vim_item.abbr = shorten_abbr .. "..."
        end
        -- Icons
        vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind)
        -- Source
        -- vim_item.menu = ({
        --   buffer = "[Buf]",
        --   nvim_lsp = "[LSP]",
        --   luasnip = "[LuaSnip]",
        --   nvim_lua = "[API]",
        --   latex_symbols = "[LaTeX]",
        --   cmp_tabnine = "[Tabnine]",
        --   path = "[Path]",
        --   emoji = "[Emoji]",
        -- })[entry.source.name]
        return vim_item
      end,
    },
  },
}
