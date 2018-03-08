(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(setq make-backup-files nil)
(delete-selection-mode 1)
(require 'popwin)
(popwin-mode 1)
(ivy-mode 1)

(set-language-environment "UTF-8")
(window-numbering-mode 1)
(recentf-mode 1)
(smartparens-global-mode 1)
(setq recentf-max-menu-item 100)
(fset 'yes-or-no-p 'y-or-n-p)
(require 'dired-x)
(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(global-evil-leader-mode)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(evil-leader/set-leader "<SPC>")
(setq company-minimum-prefix-length 1)
(setq auto-save-default nil)
(global-company-mode 1)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))
(evil-leader/set-key
  "fs" 'save-buffer
  "ff" 'find-file
  "fr" 'counsel-recentf
  "gs" 'magit-status
  "gi" 'magit-init

  )
(provide 'init-default)
