dep 'zsh config' do
  met? { "~/.zshrc".p.exists? }
end
