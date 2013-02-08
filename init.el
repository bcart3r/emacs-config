;;Setup Default Directory Paths
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))

(setq lib-dir (concat dotfiles-dir "lib/"))
(setq theme-dir (concat dotfiles-dir "themes/"))
(setq config-dir (concat dotfiles-dir "config/"))


;;adds a directory to the load path located in ~/.emacs.d/lib
(defun add-lib-path (p)
  (add-to-list 'load-path (concat lib-dir p)))


;;Loads an elisp file from ~/.emacs.d/config
(defun load-config (f)
  (load-file (concat config-dir f)))


;;Ensure ~/.emacs.d/lib is loaded on start
(add-to-list 'load-path (concat dotfiles-dir "lib"))


;;Loads the config bootstrap file
(load-config "core.el")

(add-to-list 'custom-theme-load-path theme-dir)

;;Set Default Font and Theme
(set-face-attribute 'default nil :font "Ubuntu Mono-14")

(load-theme 'wombat-nohi t)

(custom-set-faces
 '(rainbow-delimiters-depth-1-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "orange"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "lawn green"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "light pink")))))
