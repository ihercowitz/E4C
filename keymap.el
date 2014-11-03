;; Wind-move
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

;; Undo and Redo keys
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-z") 'redo)

(global-set-key (kbd "C-M-z") (if window-system 'suspend-frame 'suspend-emacs))


;; NeoTree - A File tree for Emacs
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


;; CIDER - Evaluate expression Key Setting
(add-hook 'cider-mode-hook
  (lambda ()
    (global-set-key [C-return] 'cider-eval-last-sexp)))


;; NeoTree - A File tree for Emacs
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)


;; CIDER - Evaluate expression Key Setting
(add-hook 'cider-mode-hook
  (lambda ()
    (global-set-key [C-return] 'cider-eval-last-sexp)))
