function get_linux_distribution_type()
{
    # TODO
    printf "ubuntu"
}


function get_system_core_type()
{
    if [ "$(uname -s)" == "Darwin" ]
    then
        printf "macos"
    elif [ "$(uname -s)" == "Linux" ]
    then
        get_linux_distribution_type
    else
        printf "unknow"
    fi
}



function setup_latex_ubuntu()
{
    sudo apt install \
        texlive-latex-base \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        texlive-latex-extra
        # For solve the problem --- "! LaTeX Error: File 'CJKutf8.sty' not found."
        # https://tex.stackexchange.com/questions/17611/how-does-one-type-chinese-in-latex/
        # https://tex.stackexchange.com/questions/125843/how-to-install-cjk-font-to-ubuntu-latex
        latex-cjk-all


}
function setup_latex_macos()
{
    brew cask install mactex
    # brew cask install basictex
}
function setup_latex()
{
    case "$(get_system_core_type)" in
        "macos")
            setup_latex_macos
        ;;
        "ubuntu")
            setup_latex_ubuntu
        ;;
        *)
            printf "do nothing in setup_latex"
        ;;
    esac
}


function setup_spell_checking_ubuntu()
{
    # TODO:
}
function setup_spell_checking_macos()
{
    brew install aspell
}
function setup_spell_checking()
{
    case "$(get_system_core_type)" in
        "macos")
            setup_spell_checking_macos
            ;;
        "ubuntu")
            setup_spell_checking_ubuntu
            ;;
        *)
            printf "do nothing in setup_spell_checking"
            ;;
    esac
}


function setup_graphviz_ubuntu()
{
    sudo apt install graphviz
}
function setup_graphviz_macos()
{
    brew install graphviz

    # download plant uml: https://plantuml.com/zh/download
    # brew cask install java
}
function setup_graphviz_windows()
{
    scoop install graphviz
    # scoop install openjdk10
}
function setup_graphviz()
{
    case "$(get_system_core_type)" in
        "macos")
            setup_graphviz_macos
            ;;
        "ubuntu")
            setup_graphviz_ubuntu
            ;;
        *)
            printf "do nothing in setup_graphviz"
            ;;
    esac
}


function setup_javascript()
{
    npm install -g \
        import-js \
        eslint \
        # js-beautify \
        # language server protocol \
        typescript \
        typescript-language-server
        prettier
}



function setup_ledger_ubuntu()
{
    sudo apt install ledger
}
function setup_ledger_macos()
{
    brew install ledger
}
function setup_ledger()
{
    case "$(get_system_core_type)" in
        "macos")
            setup_ledger_macos
            ;;
        "ubuntu")
            setup_ledger_ubuntu
            ;;
        *)
            printf "do nothing in setup_ledger"
            ;;
    esac
}




setup_latex
setup_spell_checking
setup_graphviz
setup_javascirpt
setup_ledger
