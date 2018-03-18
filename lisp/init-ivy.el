(use-package ivy
  :diminish ivy-mode 
  :init (add-hook 'after-init-hook #'ivy-mode)
  :config
  (recentf-mode 1)
  (setq recentf-max-saved-items 100))
(provide 'init-ivy)
