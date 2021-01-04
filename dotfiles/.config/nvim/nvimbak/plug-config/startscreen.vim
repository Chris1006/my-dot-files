let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ ]

let g:startify_session_autoload = 1

let g:startify_custom_header = [
      \' _   _            _   _ ________  ___',
      \'| \ | |          | | | |_   _|  \/  |',
      \'|  \| | ___  ___ | | | | | | | .  . |',
      \'| . ` |/ _ \/ _ \| | | | | | | |\/| |',
      \'| |\  |  __/ (_) \ \_/ /_| |_| |  | |',
      \'\_| \_/\___|\___/ \___/ \___/\_|  |_/',
      \''                                     
      \]
