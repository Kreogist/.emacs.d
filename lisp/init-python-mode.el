;;unloading python.el
(when (featurep 'python) (unload-feature 'python t))

;;load python-mode.el
(setq py-install-directory "~/.emacs.d/site-lisp/python-mode.el-6.1.3")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

;; python-mode settings
(setq py-load-pymacs-p nil)
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist(cons '("python" . python-mode)
                                  interpreter-mode-alist))
;; path to the python interpreter, e.g.: ~rw/python31/bin/python3
(setq py-python-command "python")
(autoload 'python-mode "python-mode" "Python editing mode." t)

;; pymacs settings
(setq pymacs-python-command py-python-command)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")

;;(add-to-list 'load-path "~/.emacs.c/site-lisp/pycomplete")
;;(require 'pycomplete)

(provide 'init-python-mode)
