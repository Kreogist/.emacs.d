;; about TAB
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

;;show paren
(show-paren-mode t)

(setq require-final-newline t)

;;-----------------------------------------------
;; Disable tool-bar and scroll-bar
;;-----------------------------------------------
(tool-bar-mode 0)
(scroll-bar-mode 0)

;;-----------------------------------------------
;; File preprocess
;;-----------------------------------------------
(defun indent-whole-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max))
  )
;;indent the whole buffer befor saving the buffer
(add-hook 'before-save-hook 'indent-whole-buffer)

(provide 'init-basic-config)
