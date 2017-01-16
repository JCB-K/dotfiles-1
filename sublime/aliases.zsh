proj() {
  local project
  project=$(find ~/src/*/*.sublime-project | fzf) &&
  subl $(echo "$project")
}
