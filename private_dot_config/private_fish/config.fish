set -Ux LC_ALL en_US.UTF-8
set -Ux LANG en_US.UTF-8

set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_DATA_HOME $HOME/.local/share
set -Ux XDG_STATE_HOME $HOME/.local/state

set -gx VSCODE_PORTABLE $XDG_DATA_HOME/vscode
set -gx DOCKER_CONFIG $XDG_CONFIG_HOME/docker
set -gx EDITOR nvim
set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -gx PYTHON_HISTORY $XDG_DATA_HOME/python_history
set -gx PYTHONPYCACHEPREFIX $XDG_CACHE_HOME/python
set -gx PYTHONUSERBASE $XDG_DATA_HOME/python
set -gx XAUTHORITY $XDG_RUNTIME_DIR/Xauthority
set -gx PSQLRC $XDG_CONFIG_HOME/pg/psqlrc
set -gx PSQL_HISTORY $XDG_STATE_HOME/psql_history
set -gx PGPASSFILE $XDG_CONFIG_HOME/pg/pgpass
set -gx PGSERVICEFILE $XDG_CONFIG_HOME/pg/pg_service.conf
set -gx CUDA_CACHE_PATH $XDG_CACHE_HOME/nv
set -gx CC_SWITCH_CONFIG_DIR $XDG_CONFIG_HOME/cc-switch
set -gx CODEX_HOME $XDG_CONFIG_HOME/codex

set -gx no_proxy "localhost,127.0.0.1,.noman.work"
set -gx NO_PROXY "localhost,127.0.0.1,.noman.work"

set -gx ANTHROPIC_BASE_URL http://127.0.0.1:15721
set -gx ANTHROPIC_AUTH_TOKEN proxy-placeholder

fish_add_path -g $HOME/.local/bin
fish_add_path -g $XDG_DATA_HOME/cargo/bin
fish_add_path -g $XDG_DATA_HOME/npm/bin
fish_add_path -g $XDG_DATA_HOME/solana/install/active_release/bin
fish_add_path -g $XDG_CONFIG_HOME/.foundry/bin

if test -f /opt/homebrew/bin/brew
    eval (/opt/homebrew/bin/brew shellenv)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    tmux new-session -A -s genesis
end

