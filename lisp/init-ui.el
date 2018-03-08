(setq initial-frame-alist (quote ((fullscreen . maximized))))
;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标的样式（不能生效，解决方案见第二集）
(setq-default cursor-type 'bar)
;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)
(global-hl-line-mode 1)
(which-key-mode 1)
(load-theme 'monokai 1)
;; adjust my English and Chinese font for table align
(set-face-attribute
 'default nil
 :font (font-spec :name "-adbe-source code pro-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1"
                  :weight 'normal
                  :slant 'normal
                  :size 18)) 
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font
   (frame-parameter nil 'font)
   charset
   (font-spec :name "-zyec-nsimsun-normal-normal-normal-*-*-*-*-*-d-0-iso10646-1"
              :weight 'normal
              :slant 'normal
              :size 16.5)))


(provide 'init-ui)
