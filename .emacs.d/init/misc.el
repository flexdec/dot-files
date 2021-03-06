
(setq-default fill-column 79)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'prog-mode-hook 'turn-on-auto-fill)
(setq-default save-place t)
(setq save-place-file (concat user-emacs-directory ".saved-places"))
(require 'saveplace)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(require 'uniquify)

;; use aspell instead of ispell
(setq ispell-program-name "aspell"
      ispell-extra-args '("--sug-mode=ultra"))
(defun flycheck-setup ()
  (eval-after-load 'flycheck
    '(setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers)))
  (add-hook 'prog-mode-hook 'flycheck-mode))

(flycheck-setup)

(setq x-select-enable-clipboard t
        x-select-enable-primary t
        save-interprogram-paste-before-kill t
        apropos-do-all t
        mouse-yank-at-point t
        save-place-file (concat user-emacs-directory "places")
        backup-directory-alist `(("." . ,(concat user-emacs-directory
                                                 "backups"))))
;; hippie expand is dabbrev expand on steroids
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

;;; ido-mode
(setq ido-enable-prefix nil)
(setq ido-enable-case nil)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(global-rainbow-delimiters-mode)
(setq ring-bell-function 'ignore)

(key-chord-mode 1)
(setq next-line-add-newlines t)
(show-paren-mode t)


(setq ns-pop-up-frames nil)
(provide 'misc)
