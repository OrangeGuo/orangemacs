(require 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

(define-key emmet-mode-keymap (kbd "TAB") 'emmet-expand-line)
(provide 'init-web)
