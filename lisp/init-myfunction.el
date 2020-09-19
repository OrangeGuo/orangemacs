;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

;;(browse-url "https://www.baidu.com/s?&wd=hello")
(defun search-in-browser (keyword)
  (interactive "splease input keyword:")
  (browse-url
   (concat "https://www.baidu.com/s?&wd=" keyword)))

(provide 'init-myfunction)
