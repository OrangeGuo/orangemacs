  (when (>= emacs-major-version 24)
     (require 'package)
     ;;(package-initialize)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

 ;; cl - Common Lisp Extension
 (require 'cl)

 ;; Add Packages
 (defvar my/packages '(
		ace-link
		ace-window
		avy
		calfw
		calfw-org
		youdao-dictionary
		indent-guide
		;; dired 
		ranger
		
		company
		;; c
		irony
		company-irony
		company-irony-c-headers
		;; python 
		anaconda-mode
		py-autopep8
		company-anaconda
		
		;; web
		web-mode
		js2-mode
		web-beautify
		js2-refactor
		emmet-mode

		;; key 
		evil
		evil-leader
		which-key

		;; program
		flycheck
		quickrun
		yasnippet
		yasnippet-snippets
		auto-yasnippet 

		counsel
		counsel-projectile
		helm-ag
		hungry-delete
		ibuffer-projectile
		ivy
		magit
		;; UI
		monokai-theme
		highlight-parentheses
		rainbow-delimiters
		smartparens
		clean-aindent-mode
		;; modeline
		diminish
		nyan-mode
		
		org-bullets
		org-octopress
		org-projectile
		popwin
		projectile
		pyim
		
	
		swiper

		use-package
		window-numbering 
		) "Default packages")

 (setq package-selected-packages my/packages)

 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))
;; 配置 pyim
  (use-package pyim
  :ensure nil
  :config
  ;; 激活 basedict 拼音词库
  (use-package pyim-basedict
    :ensure nil
    :config (pyim-basedict-enable))

  (setq default-input-method "pyim")

  ;; 设置 pyim 探针设置，这是 pyim 高级功能设置，可以实现 *无痛* 中英文切换 :-)
  ;; 我自己使用的中英文动态切换规则是：
  ;; 1. 光标只有在注释里面时，才可以输入中文。
  ;; 2. 光标前是汉字字符时，才能输入中文。
  ;; 3. 使用 M-j 快捷键，强制将光标前的拼音字符串转换为中文。
;;  (setq-default pyim-english-input-switch-functions
;;                '(pyim-probe-dynamic-english
;;                 pyim-probe-isearch-mode
;;                  pyim-probe-program-mode
;;                  pyim-probe-org-structure-template))
;;
 ;; (setq-default pyim-punctuation-half-width-functions
  ;;              '(pyim-probe-punctuation-line-beginning
   ;;               pyim-probe-punctuation-after-punctuation))

  ;; 开启拼音搜索功能
;;  (pyim-isearch-mode nil)

  ;; 使用 pupup-el 来绘制选词框
  (setq pyim-page-tooltip 'popup)

  ;; 选词框显示5个候选词
  (setq pyim-page-length 9)

  ;; 让 Emacs 启动时自动加载 pyim 词库
  ;;(add-hook 'emacs-startup-hook
    ;;       #'(lambda () (pyim-restart-1 t)))
  :bind
  (("M-j" . pyim-convert-code-at-point) ;与 pyim-probe-dynamic-english 配合
   ("C-;" . pyim-delete-word-from-personal-buffer)))
 
(use-package org-projectile
  :bind (("C-c n p" . org-projectile-project-todo-completing-read)
         ("C-c c" . org-capture))
  :config
  (progn
    (setq org-projectile-projects-file
          "/your/path/to/an/org/file/for/storing/projects.org")
    (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))
    (push (org-projectile-project-todo-entry) org-capture-templates))
  :ensure t)

(provide 'init-packages)
