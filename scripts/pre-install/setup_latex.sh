
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
    brew install --cask mactex
    # brew install --cask basictex
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


setup_latex


# file ends here

