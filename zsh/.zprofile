# FNM (npm, node)
fnm_path="$HOME/.local/share/fnm"
if [ -d "$fnm_path" ]; then
  export PATH="$fnm_path:$PATH"
  eval "$(fnm env)"
fi

# Go
go_path="/usr/local/go/bin"
if [ -d "$go_path" ]; then
  export PATH="$go_path:$PATH"
fi

# Go workspace binaries
go_workspace_path="$HOME/go/bin"
if [ -d "$go_workspace_path" ]; then
  export PATH="$go_workspace_path:$PATH"
fi