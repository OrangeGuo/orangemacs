(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)

(use-package company-irony-c-headers
  :ensure t
  :defer t
  :init (progn (add-hook 'c-mode-hook
			 (lambda () (add-to-list 'company-backends '(company-irony-c-headers company-irony)))
	       (add-hook 'c++-mode-hook
			 (lambda () (add-to-list 'company-backends '(company-irony-c-headers company-irony)))
	       ))))
;;(setq c-basic-offset 4)
(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode t)
(setq c-default-style "linux")
(setq sp-escape-quotes-after-insert nil)
(provide 'init-c)


