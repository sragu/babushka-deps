dep 'homebrew.cask' do 
  met? { "/opt/homebrew-cask".p.exists?  }
  meet { shell "brew install caskroom/cask/brew-cask" }
end

dep "iterm2.cask" do 
  met? { "/opt/homebrew-cask/Caskroom/iterm2".p.exists? }
  meet { shell "brew cask install iterm2"  }
end

dep "java.cask" do 
  met? { "/usr/bin/java".p.exists? }
  meet { shell "brew cask install java"  }
end

dep 'vagrant.cask' do
  met? { "/usr/local/bin/vagrant".p.exists? }
  meet { shell "brew cask install vagrant" }
end
 
dep 'virtualbox.cask' do
  met? { "/opt/homebrew-cask/Caskroom/virtualbox".p.exists? }
  meet { shell "brew cask install virtualbox" }
end

dep 'boot2docker.cask' do
  met? { "/usr/local/bin/docker".p.exists? }
  meet { shell "brew cask install boot2docker" }
end

dep 'intellij-ce.cask' do
  met? { "/opt/homebrew-cask/Caskroom/intellij-idea-ce".p.exists? }
  meet { shell "brew cask install intellij-idea-ce"}
end

dep 'Mou.cask' do
  met? { "/opt/homebrew-cask/Caskroom/mou".p.exists? }
  meet { shell "brew cask install mou"}
end

dep 'Sublime Text.app' do
  sparkle 'http://www.sublimetext.com/updates/3/stable/appcast_osx.xml'
end

dep 'apps' do
  requires 'homebrew.cask'
  requires 'iterm2.cask'
  requires 'java.cask'
  requires 'vagrant.cask'
  requires 'virtualbox.cask'
  requires 'boot2docker.cask'
  
  requires 'intellij-ce.cask'
  requires 'Mou.cask'
  requires 'Sublime Text.app'
end

