(setq org-default-notes-file "~/org/inbox.org")
(setq org-capture-templates nil)
(add-to-list 'org-capture-templates
             '("b" "blog" entry
               (file+headline "~/org/gtd.org" "blog" )
               "* TODO [#B] %^{标题} %^G\n%T\n%?\n" )
	     )
(add-to-list 'org-capture-templates
             '("n" "notes" entry
               (file+headline "~/org/gtd.org" "study" )
               "* TODO [#B] %^{标题} %^G\n%T\n %a   %?\n" )
	     )
(add-hook 'org-mode-hook 'org-toggle-inline-images)
(provide 'init-org)
