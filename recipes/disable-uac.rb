system_policies = 'HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System'

# registry_key system_policies do
#   values [{
#     :name => 'EnableLUA',
#     :type => :dword,
#     :data => 0}, {
#     :name => 'ConsentPromptBehaviorAdmin',
#     :type => :dword,
#     :data => 0}
#   ]
# end
registry_key 'EnableLUA' do
  key system_policies
  values [{
    :name => 'EnableLUA',
    :type => :dword,
    :data => 0}
  ]
end

registry_key 'ConsentPromptBehaviorAdmin' do
  key system_policies
  values [{
    :name => 'ConsentPromptBehaviorAdmin',
    :type => :dword,
    :data => 0}
  ]
end
