-- c = auto-wrap comments using textwidth
-- q = allow formatting with 'gq'
-- remove t = NEVER auto-wrap code
vim.opt.formatoptions:append("cq")
vim.opt.formatoptions:remove("t")
vim.opt.textwidth = 80
