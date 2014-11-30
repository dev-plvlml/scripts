emacsclient -e "(kill-emacs)"
emacs --daemon
emacsclient -e "(my-daemon-workaround)"
emacsclient -c
