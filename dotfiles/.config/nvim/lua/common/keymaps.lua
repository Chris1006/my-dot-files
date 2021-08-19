vim.g.mapleader = " "

local utils = require('utils')

local nnoremap = utils.nnoremap
local vnoremap = utils.vnoremap

nnoremap('<TAB>', ':bnext<CR>')
nnoremap('<S-TAB>', ':bprevious<CR>')

nnoremap('<C-h>', '<C-w>h')
nnoremap('<C-j>', '<C-w>j')
nnoremap('<C-k>', '<C-w>k')
nnoremap('<C-l>', '<C-w>l')

vnoremap('<', '<gv')
vnoremap('>', '>gv')

nnoremap('<C-s>', ':w<CR>')
nnoremap('<C-Q>', ':wq!<CR>')
nnoremap('C-c', ':bdelete<CR>')
