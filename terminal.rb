dep 'bash.managed' do
  installs 'bash', 'zsh', 'antigen', 'autojump'
end

dep 'terminal' do 
  requires 'homebrew'
  requires 'bash.managed'

  requires 'ssh keys generated'

  requires 'zsh config'
end

