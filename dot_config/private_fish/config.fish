if status is-interactive
    command fastfetch --logo-type small --logo arch
    set fish_greeting ""
end
set -gx PATH $PATH "$HOME/.dotnet/tools"

