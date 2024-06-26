return {
  'github/copilot.vim',
  config = function()
    -- Disable the default <Tab> mapping
    vim.g.copilot_no_tab_map = true

    -- Map <C-U> to copilot#Accept()
    vim.api.nvim_set_keymap("i", "<C-U>", 'copilot#Accept("<CR>")', {silent = true, expr = true, noremap = true})
  end
}
