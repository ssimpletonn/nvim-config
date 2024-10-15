local opt = vim.opt
opt.shiftwidth = 2
opt.tabstop = 2
opt.number = true
opt.relativenumber = true
vim.o.statuscolumn = "%s %l %{v:relnum>0?v:relnum:''} " 

vim.g.mapleader = " "
