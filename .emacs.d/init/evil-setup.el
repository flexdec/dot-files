(setq evil-auto-indent t)
(setq evil-regexp-search t)
(setq evil-want-C-i-jump t)
(add-hook 'text-mode-hook 'turn-on-evil-mode)
(add-hook 'eshell-mode-hook 'turn-on-evil-mode)
(add-hook 'prog-mode-hook 'turn-on-evil-mode)
(add-hook 'comint-mode-hook 'turn-on-evil-mode)
(add-hook 'Info-mode-hook 'turn-off-evil-mode)
(key-chord-define evil-insert-state-map "jk" 'evil-force-normal-state)
(provide 'evil-setup)
