-- Initialize global variable
vim.g.ProseOn = 0

-- ToggleProse function
ToggleProse = function()
  if vim.g.ProseOn == 0 then
    Prose()
  else
    ProseOff()
  end
end

-- Prose function
Prose = function()
  print("Prose: On")
  vim.g.ProseOn = 1

  -- Map function for normal mode
  local function nmap(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, {})
  end

  nmap('j', 'gj')
  nmap('k', 'gk')
  nmap('0', 'g0')
  nmap('$', 'g$')
  nmap('A', 'g$a')
  nmap('I', 'g0i')

  vim.cmd('setlocal linebreak')
  vim.cmd('setlocal nonumber')
  vim.cmd('setlocal norelativenumber')
  vim.cmd('set t_Co=0')
  vim.cmd('setlocal foldcolumn=2')
  vim.cmd('hi! link FoldColumn Normal')
end


-- ProseOff function
ProseOff = function()
  print("Prose: Off")
  vim.g.ProseOn = 0

  -- Map function for normal mode
  local function nmap(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, {})
  end

  nmap('j', 'j')
  nmap('k', 'k')
  nmap('0', '0')
  nmap('$', '$')
  nmap('A', 'A')
  nmap('I', 'I')

  vim.cmd('setlocal nolinebreak')
  vim.cmd('setlocal number')
  vim.cmd('setlocal relativenumber')
  vim.cmd('set t_Co=256')
  vim.cmd('setlocal foldcolumn=0')
end
