;;Require area
(require 'auto-complete-config)
(require 'redo+)
(require 'neotree)
(require 'popup-kill-ring)
(require 'rainbow-delimiters)
(require 'color-theme)

;; Set UTF-8 as default
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
  
;; Initialize the theme folder and set Cyberpunk as default theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(color-theme-sanityinc-tomorrow-night)


;; Indent using Space instead Tab 
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2) ;; Indent with 2 spaces - lisp style
(setq indent-line-function 'insert-tab)

;; Start the Rainbow parenthesis
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Paredit
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)


;; Hook on parenthesis highlight
(add-hook 'emacs-lisp-mode-hook 'highlight-parentheses-mode)
(add-hook 'clojure-mode-hook 'highlight-parentheses-mode)
(add-hook 'cider-repl-mode-hook 'highlight-parentheses-mode)


;; CIDER
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq cider-popup-stacktraces nil)
(setq cider-repl-use-clojure-font-lock t)


;; Auto complete Settings
(setq ac-help-delay 0.2)
(setq ac-quick-help-delay 0.2)

(ac-config-default)

(add-to-list 'ac-modes 'cider-mode)
(add-to-list 'ac-modes 'cider-repl-mode)

(defun set-auto-complete-as-completion-at-point-function ()
    (setq completion-at-point-functions '(auto-complete)))
(add-hook 'auto-complete-mode-hook 'set-auto-complete-as-completion-at-point-function)

(add-hook 'cider-repl-mode-hook 'set-auto-complete-as-completion-at-point-function)
(add-hook 'cider-mode-hook 'set-auto-complete-as-completion-at-point-function)

(set-default 'ac-sources
             '(ac-source-dictionary
               ac-source-words-in-buffer
               ac-source-words-in-same-mode-buffers
               ac-source-semantic
               ac-source-yasnippet))
