dep 'spacemacs.config' do
  met? { "~/.emacs.d".p.exists? }
  meet { shell "git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d" }
end

dep 'spacemacs.dotfile' do
  met? { shell "fgrep 'dotspacemacs-line-numbers t' ~/.spacemacs" }
  meet { shell "curl https://raw.githubusercontent.com/evjan/dotfiles/master/.spacemacs > ~/.spacemacs" }
end

dep 'emacs' do
  requires 'spacemacs.config'
  requires 'spacemacs.dotfile'
  met? { which 'emacs' }
  meet { shell "sudo apt-get install emacs"}
end
