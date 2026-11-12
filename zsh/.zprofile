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