(require 'package)
(add-to-list 'package-archives
             '("melpa" .
               "http://melpa.milkbox.net/packages/"))
(package-initialize)

;;Setup Default Directory Paths
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq lib-dir (concat dotfiles-dir "lib/"))
(setq theme-dir (concat dotfiles-dir "themes/"))
(setq config-dir (concat dotfiles-dir "config/"))
;;End

;;adds a directory to the load path located in ~/.emacs.d/lib
(defun add-lib-path (p)
  (add-to-list 'load-path (concat dotfiles-dir p)))
;;End

;;Loads an elisp file from ~/.emacs.d/config
(defun load-config (f)
  (load-file (concat config-dir f)))
;;End

;;Ensure ~/.emacs.d/lib is loaded on start
(add-to-list 'load-path (concat dotfiles-dir "lib"))
;;End

;;Loads the config bootstrap file
(load-config "core.el")
;;End

;;Set Default Font and Theme
(set-face-attribute 'default nil :font "Ubuntu Mono-14")
(load-theme 'wombat t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
