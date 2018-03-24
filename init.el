;;(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)
(require 'init-keybindings)
(require 'init-ui)
(require 'init-default)
(require 'init-config)
(require 'init-company)
(require 'init-ivy)
(message (emacs-init-time))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files nil)
 '(org-default-notes-file "/home/orange/org-notes/notes.org")
 '(org-export-headline-levels 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit default :foreground "red" :height 1.3))))
 '(org-level-2 ((t (:inherit default :foreground "green" :height 1.2))))
 '(org-level-3 ((t (:inherit default :foreground "deep sky blue" :height 1.15))))
 '(org-level-4 ((t (:inherit default :foreground "magenta" :height 1.1))))
 '(org-level-5 ((t (:inherit default :foreground "sandy brown")))))
