
;;
;; Custom Emacs configuration for reduced resource machines
;;

;; BASE
(setq initial-scratch-message "⌬  In Tech We Trust.")
(setq inhibit-startup-message t)
(setq require-final-newline t)
(setq frame-title-format "%S: %f")
(modify-frame-parameters nil '((wait-for-wm . nil)))
(fset 'yes-or-no-p 'y-or-n-p)
(icomplete-mode 1)
(setq column-number-mode t)
(setq display-time-string-forms '((format "[%s:%s]-[%s/%s/%s] " 24-hours minutes day month year)))
(setq scroll-preserve-screen-position t)
(add-hook 'save-buffer-hook 'delete-trailing-whitespace)
(setq make-backup-files nil)
(setq backup-directory-alist `(("." . "~/.saves")))
(setq delete-auto-save-files t)
(global-font-lock-mode t)
(setq-default indicate-empty-lines t)
(transient-mark-mode t)
(column-number-mode t)
(setq standard-indent 2)
(setq-default indent-tabs-mode nil)
(global-set-key "\M- " 'hippie-expand)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq mac-command-modifier 'control)

;; THEME
(setq frame-background-mode 'dark)

;; COLORS
(set-cursor-color "Red")
(set-face-foreground 'minibuffer-prompt "#33FFFF")

;; IDO
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq confirm-nonexistent-file-or-buffer nil)
(ido-mode 1)

;; SHORTCUTS
(windmove-default-keybindings 'meta)
(global-set-key (kbd "C-c g") 'goto-line)
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c v") 'toggle-comment-on-line)
(global-set-key (kbd "C-c C-c") 'comment-box)
(global-set-key (kbd "C-<up>") 'backward-paragraph)
(global-set-key (kbd "<C-down>") 'forward-paragraph)
(global-set-key (kbd "C-c a") 'my-align-single-equals)
(global-set-key (kbd "<f5>") 'shrink-window-horizontally)
(global-set-key (kbd "<f6>") 'enlarge-window-horizontally)
(global-set-key (kbd "<f7>") 'shrink-window)
(global-set-key (kbd "<f8>") 'enlarge-window)

;; JS MODE
(setq js-indent-level 2)
(add-to-list 'auto-mode-alist '("\\.ino$" . c-mode))
