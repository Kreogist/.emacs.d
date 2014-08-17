(require-package 'tabbar)

(tabbar-mode)
(tabbar-mwheel-mode)

;; set tabbar's default theme
;; from http://blog.163.com/wobutianl@126/blog/static/133584820129303151170/
(set-face-attribute 'tabbar-default nil 
                   :family "Anonymous Pro" 
                   :background "gray80" 
                   :foreground "gray30" 
                   :height 1.0 
                    ) 

(set-face-attribute 'tabbar-button nil 
                    :inherit 'tabbar-default 
                    :box '(:line-width 1 :color "yellow70") 
                    ) 

(set-face-attribute 'tabbar-selected nil 
                    :inherit 'tabbar-default 
                    :foreground "DarkGreen" 
                    :background "LightGoldenrod" 
                   :box '(:line-width 2 :color "DarkGoldenrod") 
                    :overline "black" 
                    :underline "black" 
                    :weight 'bold 
                   ) 

(set-face-attribute 'tabbar-unselected nil 
                    :inherit 'tabbar-default 
                   :box '(:line-width 2 :color "#00B2BF") 
                   )  

(provide 'init-tabbar)
