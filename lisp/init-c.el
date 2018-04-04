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
(provide 'init-c)


