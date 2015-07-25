dep 'zsh config', template: 'task' do
  met? { "~/.zshrc".p.exists? }
  run { log_shell "set zshrc", "cp ./dotfiles/zshrc.erb ~/.zshrc" }
end

dep 'git global config', template: 'task' do
  met? { "~/.gitconfig".p.exists? }
  run { log_shell "set git config", "cp ./dotfiles/gitconfig.erb ~/.gitconfig" }
end

#create a template for dotfiles or copy all files in the directory

dep 'dotfiles' do
  requires 'zsh config'
  requires 'git global config'
end
