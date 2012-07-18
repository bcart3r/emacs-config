;;Main Config file which loads all others

(require 'package)
(add-to-list 'package-archives
             '("melpa" .
               "http://melpa.milkbox.net/packages/"))
(package-initialize)

(require 'rainbow-delimiters)
;;(global-rainbow-delimiters-mode)

;;Add Mouse support in Terminal
(require 'mouse)
(xterm-mouse-mode t)
(setq mouse-yank-at-point t)
(global-set-key [mouse-4] '(lambda ()
                             (interactive)
                             (scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
                             (interactive)
                             (scroll-up 1)))


(load-config "autocomplete.el")
(load-config "lisp.el")
(load-config "clojure.el")

