;; Initialize the theme folder and set Cyberpunk as default theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'cyberpunk t)


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
(require 'auto-complete-config)
(setq ac-help-delay 0.2)
(setq ac-quick-help-delay 0.2)

(ac-config-default)

(add-hook 'cider-mode-hook 'ac-nrepl-setup)
(add-hook 'cider-repl-mode-hook 'ac-nrepl-setup)
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


;; Set TAB as Autocomplete Key
(define-key ac-completing-map "\t" 'ac-complete)

(require 'redo+)
(require 'neotree)
