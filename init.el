;; Remove scrollbars, menu bars, and toolbars
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


;; Hide the startup message and start an empty buffer
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
(setq initial-scratch-message nil)

;; Show line number 
(global-linum-mode t)

;; Cursor will not blink
(blink-cursor-mode 0)

;; Disable the default cursor on parens
(setq show-paren-delay 0)
(show-paren-mode 0)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Keep a list of recently opened
(recentf-mode 1) 


(setq core-file (expand-file-name "core" user-emacs-directory))
(setq packages-file (expand-file-name "packages" user-emacs-directory))
(setq keymap (expand-file-name "keymap" user-emacs-directory))

(load packages-file)
(add-hook 'after-init-hook
  '(lambda ()
     (load core-file)
     (load keymap) ;; If you want to use the default Emacs keymap, comment this line
     ))
