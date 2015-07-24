dep 'set caps lock to control', template: 'task' do
  on :osx do
    run { shell 'osascript', File.expand_path('../lib/set_caps_to_ctrl.applescript', __FILE__) }
  end
end

dep 'set function keys to be default', template: 'task' do
  on :osx do
    run { shell 'osascript', File.expand_path('../lib/set_function_keys_by_default.applescript', __FILE__) }
  end
end

dep 'prefs' do
  requires 'set caps lock to control'
  requires 'set function keys to be default'
end
