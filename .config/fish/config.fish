# sublime alises
alias subl "sublime "
alias s "subl ."


# hide and show hidden files
function show
  defaults write com.apple.finder AppleShowAllFiles -bool true
  killall Finder
end

function hide
  defaults write com.apple.finder AppleShowAllFiles -bool false
  killall Finder
end
