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
(global-set-key (kbd "C-w") 'save-buffer)
(global-set-key (kbd "C-S-w") 'save-)


;; Open files
(global-set-key (kbd "C-o") 'find-file)

;; Show the recent files opened
(global-set-key (kbd "C-S-o") 'recentf-open-files)

;; Find Keys
(global-set-key (kbd "C-f") 'isearch-forward)
(global-set-key (kbd "C-S-f") 'isearch-backward)

;; Select All
(global-set-key (kbd "C-a") 'mark-whole-buffer)

;; NeoTree - A File tree for Emacs
(global-set-key [f8] 'neotree-toggle)


;; Indent on Enter
(define-key global-map (kbd "RET") 'newline-and-indent)

;; CIDER - Evaluate expression Key Setting
(add-hook 'cider-mode-hook
  (lambda ()
    (global-set-key [C-return] 'cider-eval-last-sexp)))

(add-hook 'lisp-mode-hook
          (lambda ()
            (global-set-key [C-return] 'eval-last-sexp)))


;; Keymap to encode and decode buffer 
;; To use, select ALL (control-a) and press:
;; control-F9       -> encode buffer
;; control-shift-F9 -> decode buffer 
(global-set-key [C-f9] 'base64-encode-region)
(global-set-key [C-S-f9] 'base64-decode-region)


;;Clipboard settings
(global-set-key (kbd "C-v") 'clipboard-yank)
(global-set-key (kbd "C-S-v") 'popup-kill-ring) ;; A travel into the past :)

;;Set ESC as CANCEL key
(global-set-key [escape] 'keyboard-quit)


;; Toggle menubar
(global-set-key (kbd "M-m") 'menu-bar-mode)


;; Autocomplete
(global-set-key [C-tab] 'auto-complete)


;; On Lisp mode, use F5 to eval the hole buffer
(add-hook 'lisp-interaction-mode-hook
          (lambda ()
            (global-set-key [f5] 'eval-current-buffer)))
