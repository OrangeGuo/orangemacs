(global-set-key (kbd "C-w") 'backward-kill-word)
;;(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)
(global-set-key (kbd "C-c C-r") 'counsel-recentf)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "C-s") 'swiper)
(define-key evil-normal-state-map (kbd "<RET>") 'org-open-at-point)
(define-key evil-normal-state-map (kbd "TAB") 'switch-to-buffer)
(provide 'init-keybindings)
