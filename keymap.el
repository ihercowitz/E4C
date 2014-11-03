;; Wind-move
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

;; Undo and Redo keys
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-S-z") 'redo)

(global-set-key (kbd "C-M-z") (if window-system 'suspend-frame 'suspend-emacs))

;; Save keys
(global-set-key (kbd "C-s") 'save-buffer)


;; Find Keys
(global-set-key (kbd "C-f") 'search-forward)


;; Select All
(global-set-key (kbd "C-a") 'mark-whole-buffer)

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


;; Keymap to encode and decode buffer 
;; To use, select ALL (control-a) and press:
;; control-F9       -> encode buffer
;; control-shift-F9 -> decode buffer 
(global-set-key [C-f9] 'base64-encode-region)
(global-set-key [C-S-f9] 'base64-decode-region)
