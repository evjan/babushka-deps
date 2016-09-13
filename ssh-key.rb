dep 'ssh key' do
  met? { shell "file ~/.ssh/id_rsa.pub" }
  meet { log_shell "Generating a new key", "ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ''" }
end
