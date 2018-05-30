(global-set-key (kbd "C-w") 'backward-kill-word)
;;(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)
(global-set-key (kbd "C-c C-r") 'counsel-recentf)
(global-set-key (kbd "C-c g") 'magit-status)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c f") 'clang-format-buffer)
(global-set-key (kbd "C-c x") 'quickrun)
(define-key evil-normal-state-map (kbd "<RET>") 'org-open-at-point)
(global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point+)
;;for c/c++ mode comment
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "C-c l") 'evilnc-quick-comment-or-uncomment-to-the-line)
(global-set-key (kbd "C-c c") 'evilnc-copy-and-comment-lines)
(global-set-key (kbd "C-c p") 'evilnc-comment-or-uncomment-paragraphs)
(provide 'init-keybindings)
