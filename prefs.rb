dep 'set caps lock to control', template: 'task' do
  on :osx do
    run { shell 'osascript', File.expand_path('../lib/set_caps_to_ctrl.applescript', __FILE__) }
  end
end

dep 'prefs' do
  requires 'set caps lock to control'
end
