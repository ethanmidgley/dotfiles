local keymap = vim.keymap

function map(shortcut, command, options)
  keymap.set({"n", "v", "o"}, shortcut, command, options)
end

function nmap(shortcut, command)
  keymap.set("n", shortcut, command, { noremap = false})
end

function nnoremap(shortcut, command)
  keymap.set("n", shortcut, command, { noremap = true})
end


