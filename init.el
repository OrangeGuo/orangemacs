;;(package-initialize)
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-packages)
(require 'init-ui)
(require 'init-default)
(require 'init-config)
(require 'init-keybindings)
(require 'init-company)
(require 'init-ivy)
(require 'init-org)
(message (emacs-init-time))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fill-column 84)
 '(org-agenda-files '("~/org"))
 '(org-export-headline-levels 4)
 '(package-selected-packages
   '(company projectile counsel-projectile org-projectile use-package evil-leader evil helm-ag magit hungry-delete swiper counsel smartparens popwin which-key ivy pyim ace-window ace-link nyan-mode diminish org-octopress org-bullets window-numbering ibuffer-projectile monokai-theme)))
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
