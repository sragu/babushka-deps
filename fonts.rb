dep 'fonts.cask' do 
  met? { "/usr/local/Library/Taps/caskroom/homebrew-fonts".p.exists?  }
  meet { shell "brew tap caskroom/fonts" }
end

dep 'install inconsolata' do
  met? { "~/Library/Fonts/Inconsolata.otf".p.exists? }
  meet { shell 'brew cask install font-inconsolata'}
end

dep 'fonts' do
  requires 'fonts.cask'
  requires 'install inconsolata'
end