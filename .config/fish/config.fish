# sublime alises
alias s "sublime "
# alias s "subl ."


# hide and show hidden files
function show
  defaults write com.apple.finder AppleShowAllFiles -bool true
  killall Finder
end

function hide
  defaults write com.apple.finder AppleShowAllFiles -bool false
  killall Finder
end

# start browser sync with custom arguments
alias bsync 'browser-sync start --server --files "*" --no-ghost-mode'