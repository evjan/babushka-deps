dep 'ruby-build' do
  met? { '~/.rbenv/plugins/ruby-build'.p.exists? }
  meet { shell 'git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build' }
end
