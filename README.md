# nvim-config
- Neovim configuration for VimTex and LuaSnip

Place `init.vim` and `lua/` into the folder which configuration files should be located.
- (Windows) `C:\Users\%USERNAME%\AppData\Local\nvim\`
- (Mac or Linux) `~/.config/nvim/`

Place `LuaSnip` to the appropriate location.
- (Windows) `C:\Users\%USERNAME%\.config\nvim\`
- (Mac or Linux) `~/.config/nvim/`

## Some note for Korean user who uses Windows 11
- 위 configuration을 사용하면 윈도우11 환경에서도 VimTeX+LuaSnip+SumatraPDF 조합으로 Nvim 상에서 TeX 작업을 진행할 수 있습니다.
- Sumatra PDF를 뷰어로 해서 forward/inverse search를 하기 위해서는 추가 설정이 필요합니다. 어떻게 setting을 진행했는 지 아래 간략히 적어 둔 노트를 참고하면 됩니다.
- AutoCompletion은 [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)을 사용하였고, `lua/init.lua`에 관련 설정이 있습니다. 주의사항은 `texlab`을 사용하기 전에 해당 LSP 서버를 먼저 설치해야한다는 점입니다. 공식 [깃허브](https://github.com/latex-lsp/texlab)를 참고해 설치하시면 됩니다. (추후에 자세한 셋팅 추가할 예정)

### 설치 과정

- 윈도우11에서 nvim과 vim-plug의 기본적인 설치법 설명
  - nvim 과 vim-plug의 설치는 공식 문서를 따라하면 된다.
- `$HOME\AppData\Local\`에  `nvim`폴더를 생성해서 해당 폴더에 init.vim을 만들어 사용하면 됨.
  - https://vi.stackexchange.com/questions/28020/where-is-config-nvim-init-vim-on-windows
  - 혹은 `:echo stdpath('config')` 사용하여 configuration file의 위치가 어디여야 하는 지 확인 가능
- vim-plug를 이용한 plug-in 설치 시 아래와 같이 설정하고 `:PlugInstall` 을 실행시키면 플러그인 설치가 진행된다.

```
call plug#begin()

" VimTeX 설치
Plug 'lervag/vimtex'

call plug#end()
```

- pdf viewer로는 Sumatra를 사용한다. 과정은 다음을 참조하면 된다.
  - https://www.sumatrapdfreader.org/docs/LaTeX-integration#vim
- `:VimtexView` 를 누르면 forward search가 됨

위의 과정들을 잘 거치면 PowerShell에서 Tex 파일 작성을 진행할 수 있다.

##### Installing LuaSnips

https://github.com/L3MON4D3/LuaSnip

> Note (from the official page)
>
> On Windows, you need to use a shell that can run Unix commands (MinGW,MSYS2,etc). Luckily, Git offers a `sh.exe`, so you don't need to install a heavy MSYS2 environment. Other than Git, you also need a C compiler and `make` to install `jsregexp`. You may also need to change the build command: `make install_jsregexp CC=gcc.exe SHELL=C:/path/to/sh.exe .SHELLFLAGS=-c`:

- To install `gcc`, follow https://phoenixnap.com/kb/install-gcc-windows
- To install `make`,
  - First, install `Chocolatey`, the cmd package manager for Windows 11
    - follow the [link](https://velog.io/@shinyejin0212/chocolatey-Windows%EC%9A%A9-%ED%8C%A8%ED%82%A4%EC%A7%80-%EB%A7%A4%EB%8B%88%EC%A0%80-chocolatey-%EC%84%A4%EC%B9%98-%ED%95%98%EA%B8%B0)
    - run `choco install make`

- Place the following to `init.vim` and run `: PlugInstall`

```
" follow latest release and install jsregexp.
Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'} " Replace <CurrentMajor> by the latest released major (first number of latest release)
```

- Follow the section `TLDR hello world example` of the https://ejmastnak.com/tutorials/vim-latex/luasnip/
  - hi 를 입력하고 `Tab` 을 치면 snippet이 정상 작동함을 확인할 수 있다!

##### Setting forward/inverse search for SumatraPDF

- In general, see https://www.sumatrapdfreader.org/docs/LaTeX-integration#vim and 
- `:help vimtex-synctex-inverse-search`
  - SumatraPDF의 `inverse-search command-line` 에 설정하는 명령어는 위의 도움말을 참고하여 작성하면 됨. (공식 홈페이지 문서대로 하면 안 됨)

