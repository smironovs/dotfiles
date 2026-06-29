-- clipboard.lua
local function is_wsl()
  local output = vim.fn.systemlist("uname -r")
  return output[1] and output[1]:lower():find("microsoft") ~= nil
end

if is_wsl() then
  vim.g.clipboard = {
    name = 'wsl clipboard',
    copy = {
      ['+'] = 'win32yank.exe -i --crlf',
      ['*'] = 'win32yank.exe -i --crlf',
    },
    paste = {
      ['+'] = 'win32yank.exe -o --lf',
      ['*'] = 'win32yank.exe -o --lf',
    },
    cache_enabled = true
  }
end
