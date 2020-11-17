# use polymorphism to refactor the conditionals
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

# file ends here

