local M = {}

-- General settings
M.settings = {
  number = false,
  relativenumber = false,
  wrap = true,
  termguicolors = true,
  cursorline = false,
  signcolumn = 'no',
}

-- default keymaps
-- Keymaps
M.keymaps = {
  { mode = 'n', lhs = '<leader>q', rhs = ':q<CR>' },
  { mode = 'n', lhs = '<leader>w', rhs = ':w<CR>' },
}

-- Function to apply settings
function M.apply_settings()
  for k, v in pairs(M.settings) do
    vim.o[k] = v
  end
end

-- Function to apply keymaps
function M.apply_keymaps()
  for _, km in ipairs(M.keymaps) do
    vim.api.nvim_set_keymap(km.mode, km.lhs, km.rhs, { noremap = true, silent = true })
  end
end

-- setup function
function M.setup()
  M.apply_settings()
  M.apply_keymaps()
end

return M
