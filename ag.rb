dep 'ag' do
  requires 'ag.bin', 'ag config'
end

dep 'ag.bin' do
  installs 'silversearcher-ag'
end

dep 'ag config' do
  met? { '~/.agignore'.p.exists? }
  meet { shell 'echo "logs" > ~/.agignore' }
end
