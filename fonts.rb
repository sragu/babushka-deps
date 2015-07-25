dep 'fonts.cask' do 
  met? { "/usr/local/Library/Taps/caskroom/homebrew-fonts".p.exists?  }
  meet { shell "brew tap caskroom/fonts" }
end

dep 'install inconsolata' do
  met? { "~/Library/Fonts/Inconsolata.otf".p.exists? }
  meet { shell 'brew cask install font-inconsolata'}
end

dep 'microsoft.font.installer' do
  #gives us consolas font
  source 'http://download.microsoft.com/download/8/E/7/8E7B9BB9-62EB-40E9-A135-D6AB5A991851/OpenXMLConverter102.dmg'
  
  met? { "/Library/Fonts/Microsoft".p.exists? }
  meet {
     source.each {|uri|
       Babushka::Resource.extract(uri) {|archive|
         Dir.glob("**/*pkg").select {|entry|
           entry[/all_fonts.pkg$/]
         }.map {|entry|
           log_shell "Installing #{entry}", "installer -target / -pkg '#{entry}'", :sudo => true
         }
       }
     }
   }
end

dep 'fonts' do
  requires 'fonts.cask'
  requires 'install inconsolata'
  requires 'microsoft.font.installer'
end