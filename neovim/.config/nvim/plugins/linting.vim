" LINTING
let g:ale_linters_install = 'sudo apt-get install -y tidy shellcheck npm python3-flake8 python3-pip yamllint && pip3 install vint proselint neovim; sudo npm install -g xo jshint htmlhint stylelint'
Plug 'w0rp/ale', {'do': g:ale_linters_install}
let g:ale_linters = {
	    \	'rust': ['rls'],
	    \	'text': ['proselint'],
	    \	'markdown': ['proselint'],
	    \	'gitcommit': ['proselint'],
	    \}
let g:ale_sh_shellcheck_options = '-x'
