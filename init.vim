colorscheme slate

" Only load plugins when not runing as root
if $USER != "root"
    " Check if vim-plug is installed, if not then install it
    if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
        silent !curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    endif

    call plug#begin('~/.config/nvim/plugins')
    " Color themes
    Plug 'dracula/vim', { 'as': 'dracula' }
    Plug 'sainnhe/gruvbox-material'
    Plug 'nightsense/cosmic_latte'
    " To asks for the right file to open in case wrong name is used.
    Plug 'EinfachToll/DidYouMean'
    " Visualise and control undo history in tree form.
    Plug 'mbbill/undotree'
    " Comment/Uncomment blocks of code see keybindings to get started.
    Plug 'tpope/vim-commentary'
    " For better git integration
    Plug 'tpope/vim-fugitive'
    " Quick open/fuzzy find files (and more!) see plugin settings: fzf.vim.
    Plug 'junegunn/fzf.vim'
    " A vim-native fuzzy finder/dispatcher, doesn't work as well as fzf
    " Plug 'liuchengxu/vim-clap'
    " Nice highly configurable lightweight status line.
    Plug 'itchyny/lightline.vim'
    " For when there is a need to visualy browse files inside of neovim.
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    " For REPL integration
    Plug 'rhysd/reply.vim', { 'on': ['Repl', 'ReplAuto', 'ReplSend'] }
    " For syntax support
    Plug 'dag/vim-fish'
    Plug 'MaxMEllon/vim-jsx-pretty'
    Plug 'pangloss/vim-javascript'

    """ LSP Intigration

    " Configurations for builtin language server support
    " Plug 'neovim/nvim-lsp'

    " JavaScript/TypeScript language server
    Plug 'sourcegraph/javascript-typescript-langserver', {'do': 'yarn install; yarn build'}

    " Use language server via LanguageClient-neovim
    " Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}

    " Use language server via vim-lsp
    " Plug 'prabirshrestha/async.vim'
    " Plug 'prabirshrestha/vim-lsp'


    " Use language server via vim-lsc
    Plug 'natebosch/vim-lsc'

    " Use vim-vsnip as snippet provider
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'

    """ Snippet support
    " Plug 'Shougo/neosnippet-snippets'
    " Plug 'Shougo/neosnippet.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    call plug#end()

    let g:gruvbox_material_background = 'medium'
    colorscheme gruvbox-material
    " Use github colorscheme if in diff mode
    if &diff
        colorscheme sol
    endif

    """ PLUGIN SETTINGS
    " Configure plugins, plugin specific functions and autocommands are to be
    " written in the corresponding files (makes debuging and trying out
    " plugins easier)
    source ~/.config/nvim/settings/lightline.vim
    source ~/.config/nvim/settings/NERDTree.vim
    source ~/.config/nvim/settings/reply.vim
    source ~/.config/nvim/settings/vim-jsx-pretty.vim
    " source ~/.config/nvim/settings/vim-clap.vim
    source ~/.config/nvim/settings/fugitive.vim
    source ~/.config/nvim/settings/vim-lsc.vim
    " source ~/.config/nvim/settings/vim-lsp.vim
    " source ~/.config/nvim/settings/nvim-LSP.vim
    " source ~/.config/nvim/settings/LanguageClient-neovim.vim
    " source ~/.config/nvim/settings/neosnippet.vim
    source ~/.config/nvim/settings/UltiSnips.vim
endif

" Set Vim Options
source ~/.config/nvim/startup/Options.vim
" Enable autocommands
source ~/.config/nvim/startup/AutoCommands.vim
" Setup keybindings
source ~/.config/nvim/startup/Keybindings.vim
" Load functions
source ~/.config/nvim/startup/Functions.vim

