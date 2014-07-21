" pathogen - automatizar

execute pathogen#infect() 


"""""""""""""""""""""""""""""""""""
" CONFIGURAÇÕES PADRONIZADAS GOGS "
" fonte: http://henriquegogo.wordpress.com/2009/08/31/disseram-me-ide-entao-eu-vim/ "
"""""""""""""""""""""""""""""""""""

set number                    " Numera as linhas
set nobackup                  " Não salva arquivos de backup~
set wildmode=longest,list     " Completa o comando com TAB igual o bash

set ignorecase                " Ignora o case sensitive nas buscas
set smartcase                 " Se tiver alguma letra maiúscula, ativa o case sensitive

set smartindent               " Auto-indenta
set expandtab                 " Identa com espaços

set tabstop=2                 " Quantidade de espaços por identação
set shiftwidth=2              " Quantidade de espaços da auto-indentação

set guioptions-=T                    " Deixa a GUI sem a toolbar
set autochdir                 " Vai pro diretório do arquivo aberto

" Corretor ortográfico
set spelllang=pt              " Escolhe o dicionário

" Inicia no modo INSERT
set im
imap <ESC> <C-L>

" Cria e escolhe as abas
noremap <C-T> :tabnew<CR>
noremap <C-TAB> :tabnext<CR>
noremap <C-S-TAB> :tabprevious<CR>
inoremap <C-T> <C-O>:tabnew<CR>
inoremap <C-TAB> <C-O>:tabnext<CR>
inoremap <C-S-TAB> <C-O>:tabprevious<CR>

" Mover texto com os TABs
vnoremap < <gv
vnoremap > >gv
noremap <TAB> >
noremap <S-TAB> <

" Auto-fecha parênteses, chaves etc.
"inoremap { {}<LEFT>
"inoremap ( ()<LEFT>
"inoremap [ []<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>

" Move linhas ou blocos usando ALT+SETA
nnoremap <A-DOWN> mz:m+<CR>`z==
nnoremap <A-UP> mz:m-2<CR>`z==
inoremap <A-DOWN> <Esc>:m+<CR>==gi
inoremap <A-UP> <Esc>:m-2<CR>==gi
vnoremap <A-DOWN> :m'>+<CR>gv=`<my`>mzgv`yo`z
vnoremap <A-UP> :m'<-2<CR>gv=`>my`<mzgv`yo`z

" Deleta linha com CTRL+D
noremap <C-D> dd
vnoremap <C-D> <C-C>dd
inoremap <C-D> <C-O>dd

" Organiza identação de um bloco selecionado com CTRL+ALT+F
noremap <C-A-F> ==
vnoremap <C-A-F> <C-Q>==
inoremap <C-A-F> <C-O>==

" Command-line com CTRL+ALT+C
noremap <C-A-C> :
vnoremap <C-A-C> <C-Q>:
inoremap <C-A-C> <C-O>:

" Busca com CTRL+F
noremap <C-F> /
vnoremap <C-F> <C-Q>/
inoremap <C-F> <C-O>/

" Abre arquivos com CTRL+O
noremap <C-O> :tabnew 
vnoremap <C-O> <C-Q>:tabnew 
inoremap <C-O> <C-O>:tabnew 

" Função que usa o omnicomplete apenas com o CTRL+SPACE
inoremap <C-SPACE> <C-X><C-O>
filetype plugin on

"""""""""""""""""""""""""""""
" Atalhos comuns de teclado "
"""""""""""""""""""""""""""""

" Permite selecionar com SHIFT + SETA como no Windows
set selectmode=mouse,key
set mousemodel=popup
set keymodel=startsel,stopsel
set selection=exclusive

" Backspace no modo de visÃ£o apaga a seleÃ§Ã£o
vnoremap <BS> d

" CTRL-X e SHIFT-Del corta
vnoremap <C-X> "+x
vnoremap <S-Del> "+x

" CTRL-C e CTRL-Insert copia
vnoremap <C-C> "+y
vnoremap <C-Insert> "+y

" CTRL-V e SHIFT-Insert cola
noremap <C-V>        "+gP
noremap <S-Insert>   "+gP
inoremap <C-V>       <C-O>:set nosi<CR><C-R>+<C-O>:set si<CR>
inoremap <S-Insert>  <C-R>+
cnoremap <C-V>       <C-O>:set nosi<CR><C-R>+<C-O>:set si<CR>
cnoremap <S-Insert>  <C-R>+

" CTRL-S salva
noremap <C-S>  :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" CTRL-Z desfaz
noremap <C-Z> u
vnoremap <C-Z> <C-C>u
inoremap <C-Z> <C-O>u

" CTRL-Y refaz
noremap <C-Y> <C-R>
inoremap <C-Y> <C-O><C-R>

" CTRL-A seleciona tudo
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" CTRL-F4 fecha a janela
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Opções de plugins (Retire essas linhas se não tiver estes plugins) "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme ir_black                                              " Escolhe o tema
au BufNewFile,BufRead *.txt source ~/.vim/syntax/txt.vim          " Carrega o arquivo de sintaxe para TXT

" Atalhos para plugins
noremap <F5>  :NERDTree<CR>
noremap <F7>  :set spell<CR>z=
inoremap <F5> <C-O>:NERDTree<CR>
inoremap <F7> <C-O>:set spell<CR><C-O>z=
