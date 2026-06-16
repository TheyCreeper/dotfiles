if status is-interactive
    command fastfetch --logo-type small
    set fish_greeting ""
end
set -gx PATH $PATH "$HOME/.dotnet/tools"

