(require 'calfw)
(require 'calfw-org)
(setq cfw:org-overwrite-default-keybinding t)

(setq org-default-notes-file "~/org/inbox.org")
(setq org-capture-templates nil)
(add-to-list 'org-capture-templates
             '("b" "todo" entry
               (file+headline "~/org/gtd.org" "blog" )
               "* TODO [#B] %^{标题} %^G\n%T\n%?\n" )
	     )
(add-to-list 'org-capture-templates
             '("n" "notes" entry
               (file+headline "~/org/notes.org" "study" )
               "* TODO [#B]%^{标题} %^G\n%T\n %a   %?\n" )
	     )
(add-to-list 'org-capture-templates
             '("s" "summary" entry
               (file+headline "~/org/summary.org" "review" )
               "* %^{标题} %^G\n%T\n  %?\n" )
	     )
(add-hook 'org-mode-hook 'org-toggle-inline-images)
(provide 'init-org)
