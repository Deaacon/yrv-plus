. $(dirname "$(readlink -f "${BASH_SOURCE[0]}")")/setup.source.bash

rars=rars1_5.jar
rars_version=v1.5

rars_path="$external_dir/$rars"

if ! [ -f "$rars_path"  ]; then
    wget -O "$rars_path" -o wget.log \
        "https://github.com/TheThirdOne/rars/releases/download/$rars_version/$rars"
fi

is_command_available_or_error_and_sudo_apt_install java
java -jar "$rars_path" &