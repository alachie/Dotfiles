# alises
alias s "sublime "
alias - "pwd"

# hide and show hidden files
function show
  defaults write com.apple.finder AppleShowAllFiles -bool true
  killall Finder
end

function hide
  defaults write com.apple.finder AppleShowAllFiles -bool false
  killall Finder
end

# .gitignore generator
function gi
	curl -L -s https://www.gitignore.io/api/$argv
end
