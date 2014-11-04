; All the packages you need to use Clojure on Emacs without get you hair white.
(require 'cl)
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)


(defvar required-packages
  '(auto-complete
    better-defaults
    cider
    cider-spy
    ac-cider
    clojure-mode
    clojure-snippets
    cyberpunk-theme
    dash
    highlight-numbers
    highlight-parentheses
    lush-theme 
    magit
    neotree
    paredit
    parent-mode
    popup-kill-ring
    projectile 
    rainbow-delimiters
    redo+
    ujelly-theme
    yasnippet))


; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
     (package-install p))))
