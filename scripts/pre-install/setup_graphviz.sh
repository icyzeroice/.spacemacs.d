
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


setup_graphviz


# file ends here

