(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(setq make-backup-files nil)
(delete-selection-mode 1)

(set-language-environment "UTF-8")
(fset 'yes-or-no-p 'y-or-n-p)
(add-hook 'ibuffer-hook
    (lambda ()
      (ibuffer-projectile-set-filter-groups)
      (unless (eq ibuffer-sorting-mode 'alphabetic)
        (ibuffer-do-sort-by-alphabetic))))
(require 'dired-x)
(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(setq org-export-with-toc nil)
(setq org-export-with-section-numbers nil)

(setq auto-save-default nil)
(provide 'init-default)
