(require 'org-octopress)
(setq org-octopress-directory-top       "~/blog/source")
(setq org-octopress-directory-posts     "~/blog/source/_posts")
(setq org-octopress-directory-org-top   "~/blog/source")
(setq org-octopress-directory-org-posts "~/blog/source/blog")
(setq org-octopress-setup-file          "~/blog/setupfile.org")
(require 'popwin)
(popwin-mode 1)
(ivy-mode 1)
(window-numbering-mode 1)
(recentf-mode 1)
(smartparens-global-mode 1)
(require 'spaceline-config)
(spaceline-spacemacs-theme)
(setq recentf-max-menu-item 100)
(global-evil-leader-mode)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(evil-leader/set-leader "<SPC>")
(setq company-minimum-prefix-length 1)
(global-company-mode 1)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))
(evil-leader/set-key
  "fs" 'save-buffer
  "ff" 'counsel-find-file
  "fr" 'counsel-recentf
  "fd" 'dired-jump
  "fl" 'counsel-locate
  "gs" 'magit-status
  "gi" 'magit-init
  "bi" 'ibuffer
  "bb" 'switch-to-prev-buffer
  "ps" 'helm-do-ag-project-root
  "pf" 'counsel-projectile-find-file
  "pp" 'counsel-projectile-switch-project
  "<SPC>" 'counsel-M-x
  "qq" 'save-buffers-kill-emacs
  )
(require 'pyim)
(require 'pyim-basedict) ; 拼音词库设置，五笔用户 *不需要* 此行设置
(pyim-basedict-enable)   ; 拼音词库，五笔用户 *不需要* 此行设置
(setq default-input-method "pyim")
(global-set-key (kbd "C-\\") 'toggle-input-method)
(setq pyim-page-tooltip 'popup)
(add-hook 'ibuffer-hook
    (lambda ()
      (ibuffer-projectile-set-filter-groups)
      (unless (eq ibuffer-sorting-mode 'alphabetic)
        (ibuffer-do-sort-by-alphabetic))))

(require 'diminish)
(diminish 'company-mode "C")
(diminish 'ivy-mode "I")
(diminish 'undo-tree-mode "U")

(provide 'init-config)
