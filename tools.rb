dep 'vim.managed'
dep 'wget.managed'
dep 'tree.managed'

dep 'tools' do 
  requires 'vim.managed'
  requires 'wget.managed'
  requires 'tree.managed'
end
