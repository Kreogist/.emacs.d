(let ((minver 24))
  (unless (>= emacs-major-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;-----------------------------------------------
;; Bootstrap config
;;-----------------------------------------------
;;for input method
(global-set-key (kbd "C-SPC") nil)

;;basic config init
(require 'init-utils)
(require 'init-site-lisp)
(require 'init-elpa)
(require 'init-exec-path)

;;-----------------------------------------------
;; Disable tool-bar and scroll-bar
;;-----------------------------------------------
(tool-bar-mode 0)
(scroll-bar-mode 0)

;;-----------------------------------------------
;; Load configs for specific features and modes
;;-----------------------------------------------
(require 'init-locales)
(require 'init-fonts)
(require 'init-themes)
(require 'init-recentf)
(require 'init-tabbar)
(require 'init-git)

(require 'init-linum-mode)
(require 'init-smartparens)
(require 'init-yasnippet)
(require 'init-company-mode)

;;init language modes
(require 'init-markdown-mode)
(require 'init-cc-mode)
(require 'init-python-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
