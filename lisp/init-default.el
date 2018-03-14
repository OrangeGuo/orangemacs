(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)
(setq make-backup-files nil)
(delete-selection-mode 1)
    ;; Org Headline Bullet Style (From Level 0 to Level 20)
(setq org-bullets-bullet-list
      '(
        "⓪" "①" "②"
        "③" "④" "⑤"
        "⑥" "⑦" "⑧"
        "⑨" "⑩" "⑪"
        "⑫" "⑬" "⑭"
        "⑮" "⑯" "⑰"
        "⑱" "⑲" "⑳"
        ))
(set-language-environment "UTF-8")
(fset 'yes-or-no-p 'y-or-n-p)
(require 'dired-x)
(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))
;; 设置org导出不带toc和行号
(setq org-export-with-toc nil)
(setq org-export-with-section-numbers nil)
(setq auto-save-default nil)
(provide 'init-default)
