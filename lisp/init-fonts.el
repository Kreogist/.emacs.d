;; Setting English Font
(set-face-attribute
'default nil :font "Inconsolata 12")

;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
charset
(font-spec :family "WenQuanYi Micro Hei" :size 16))) 

(provide 'init-fonts)
