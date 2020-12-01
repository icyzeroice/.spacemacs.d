function setup_spell_checking_ubuntu()
{
    # TODO
    echo "setup_spell_checking_ubuntu"
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


setup_spell_checking


# file ends here


