dep 'bash.managed' do
  installs 'bash', 'zsh', 'antigen'
end

dep 'zsh.managed' do
  installs 'zsh'
end

dep 'terminal' do 
  requires 'homebrew'
  requires 'bash.managed'
end

