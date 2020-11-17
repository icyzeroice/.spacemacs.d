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


setup_ledger


# file ends here

