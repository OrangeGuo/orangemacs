(ranger-override-dired-mode t)
(setq ranger-cleanup-eagerly t)
(setq ranger-show-hidden nil)
(setq ranger-preview-file t)
(setq ranger-max-preview-size 1)
(setq ranger-dont-show-binary t)
(setq ranger-width-preview 0.55)
(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)
(require 'all-the-icons)
;; or
(use-package all-the-icons)

(provide 'init-dired)
