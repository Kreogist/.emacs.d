(require-package 'company)

(add-hook 'after-init-hook 'global-company-mode)

(eval-after-load 'company
  '(progn
  
     (setq company-show-numbers t)
     (setq company-idle-delay t)
     (setq company-minimum-prefix-length 2)
     (push '(company-semantic :with company-yasnippet) company-backends)
   )
)


(provide 'init-company-mode)
