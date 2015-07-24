dep 'bash.managed' do
  installs 'bash', 'zsh', 'antigen', 'autojump'
end

dep 'tree.managed'

dep 'terminal' do 
  requires 'homebrew'
  requires 'bash.managed'
  requires 'tree.managed'

  requires 'ssh keys generated'

  requires 'zsh config'
end

