# DO NOT use the shell in emacs!!!

# * Org LaTeX
# ** Ubtuntu
sudo apt install \
     texlive-latex-base \
     texlive-fonts-recommended \
     texlive-fonts-extra \
     texlive-latex-extra
# For solve the problem --- "! LaTeX Error: File 'CJKutf8.sty' not found."
# https://tex.stackexchange.com/questions/17611/how-does-one-type-chinese-in-latex/
# https://tex.stackexchange.com/questions/125843/how-to-install-cjk-font-to-ubuntu-latex
     latex-cjk-all

# ** Mac OS (select one of below)
# brew cask install mactex
# brew cask install basictex


# * Spell Checking
# brew install aspell

# * GraphViz
# ** Mac OS
# brew install graphviz
# ** Ubuntu
# sudo apt install graphviz


# * JavaScript Layer
npm install -g \
    import-js \
    eslint \
    # js-beautify \
    # language server protocol \
    typescript \
    typescript-language-server
    prettier
