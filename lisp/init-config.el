(require 'org-octopress)
(setq org-octopress-directory-top       "~/blog/source")
(setq org-octopress-directory-posts     "~/blog/source/_posts")
(setq org-octopress-directory-org-top   "~/blog/source")
(setq org-octopress-directory-org-posts "~/blog/source/blog")
(setq org-octopress-setup-file          "~/blog/setupfile.org")
(require 'popwin)

(popwin-mode)
(ivy-mode 1)

(window-numbering-mode 1)
(recentf-mode 1)
(smartparens-global-mode 1)
(require 'spaceline-config)
(spaceline-spacemacs-theme)
(setq recentf-max-menu-item 200)
(global-evil-leader-mode)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(evil-leader/set-leader "<SPC>")

(setq company-minimum-prefix-length 1)
(global-company-mode 1)
(setq company-show-numbers 1)

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

;;(setq org-agenda-files '("~/org-notes"))
(defvar org-agenda-dir "" "gtd org files location")
(setq-default org-agenda-dir "~/org")
  (setq org-agenda-file-note (expand-file-name "notes.org" org-agenda-dir))
  (setq org-agenda-file-gtd (expand-file-name "gtd.org" org-agenda-dir))
  (setq org-agenda-file-journal (expand-file-name "journal.org" org-agenda-dir))
  (setq org-agenda-file-code-snippet (expand-file-name "snippet.org" org-agenda-dir))
  (setq org-default-notes-file (expand-file-name "gtd.org" org-agenda-dir))
  (setq org-agenda-files (list org-agenda-dir))


  (setq org-capture-templates
        '(("t" "Todo" entry (file+headline org-agenda-file-gtd "study")
           "* TODO [#B] %?\n  %i\n"
           :empty-lines 1)
          ("l" "Todo" entry (file+headline org-agenda-file-gtd "life")
           "* TODO [#B] %?\n  %i\n"
           :empty-lines 1)
          ("n" "notes" entry (file+headline org-agenda-file-note "Quick notes")
           "* %?\n  %i\n %U"
           :empty-lines 1)
          ("b" "Blog Ideas" entry (file+headline org-agenda-file-note "Blog Ideas")
           "* TODO [#B] %?\n  %i\n %U"
           :empty-lines 1)
          ("s" "Code Snippet" entry
           (file org-agenda-file-code-snippet)
           "* %?\t%^g\n#+BEGIN_SRC %^{language}\n\n#+END_SRC")
          ("l" "links" entry (file+headline org-agenda-file-note "Quick notes")
           "* TODO [#C] %?\n  %i\n %a \n %U"
           :empty-lines 1)
          ("j" "Journal Entry"
           entry (file+datetree org-agenda-file-journal)
           "* %?"
           :empty-lines 1)))


  (setq org-agenda-custom-commands
        '(
          ("w" . "task view")
          ("wa" "重要且紧急的任务" tags-todo "+PRIORITY=\"A\"")
          ("wb" "重要且不紧急的任务" tags-todo "-Weekly-Monthly-Daily+PRIORITY=\"B\"")
          ("wc" "不重要且紧急的任务" tags-todo "+PRIORITY=\"C\"")
          ("r" "Weekly Review"
           ((stuck "") ;; review stuck projects as designated by org-stuck-projects
            (tags-todo "life") ;; review all projects (assuming you use todo keywords to designate projects)
            ))))


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
(diminish 'company-mode )
(diminish 'ivy-mode )
(diminish 'undo-tree-mode )
(diminish 'smartparens-mode )
(diminish 'eldoc-mode )
(diminish 'which-key-mode )
(provide 'init-config)
