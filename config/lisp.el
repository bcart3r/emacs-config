(define-key lisp-mode-shared-map
  (kbd "RET") 'reindent-then-newline-and-indent)


;;Add Rainbow delimeters to most lisps
(dolist (x '(scheme emacs-lisp lisp))
  (add-hook (intern (concat (symbol-name x) "-mode-hook")) 'rainbow-delimers-mode))


