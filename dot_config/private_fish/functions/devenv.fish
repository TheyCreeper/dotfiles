function devenv --description 'alias devenv=kscreen-doctor output.HDMI-A-2.rotation.normal'
    set -l session dbapp

    if tmux has-session -t $session 2>/dev/null
        tmux attach -t $session
        return
    end

    tmux new-session -d -s $session -n db
    tmux send-keys -t $session:db 'dbenv' Enter

    tmux new-window -t $session -n app
    tmux send-keys -t $session:app 'appenv' Enter

    tmux select-window -t $session:db
    tmux attach -t $session
end
