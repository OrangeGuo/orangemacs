(require 'org-octopress)
(setq org-octopress-directory-top       "~/blog/source"
        org-octopress-directory-posts     "~/blog/source/_posts"
	org-octopress-directory-org-top   "~/blog/source"
	org-octopress-directory-org-posts "~/blog/source/blog"
	org-octopress-setup-file          "~/blog/setupfile.org")
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . web-mode))
       auto-mode-alist))


(require 'popwin)

(popwin-mode)
(ace-link-setup-default)
(window-numbering-mode 1)
(smartparens-global-mode 1)
(show-paren-mode 1)
(global-evil-leader-mode)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(load-theme 'dracula t)
(sp-local-pair '(emacs-lisp-mode lisp-interaction-mode) "'" nil :actions nil)
(setq inhibit-compacting-font-caches t)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(evil-leader/set-leader "<SPC>")
(require 'highlight-parentheses)
(global-highlight-parentheses-mode 1)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'python-mode-hook #'flycheck-mode)

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
  "ms" 'kmacro-start-macro
  "me" 'kmacro-end-call-mouse
  "mc" 'kmacro-call-macro
  "oa" 'org-agenda
  "oc" 'org-capture
  "ob" 'org-octopress
  "oe" 'org-export-dispatch
  "ol" 'org-store-link
  "oi" 'org-insert-link
  "ps" 'helm-do-ag-project-root
  "pf" 'counsel-projectile-find-file
  "pp" 'counsel-projectile-switch-project
  "ss" 'swiper
  "<SPC>" 'counsel-M-x
  "wr" 'split-window-right
  "wb" 'split-window-below
  "wc" 'delete-other-windows
  "wd" 'delete-window
  "a"  'ace-window
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
(diminish 'undo-tree-mode )
(diminish 'smartparens-mode )
(diminish 'eldoc-mode )
(diminish 'which-key-mode )
(diminish 'highlight-parentheses-mode)
(provide 'init-config)
