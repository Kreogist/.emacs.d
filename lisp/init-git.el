(require-package 'magit)
(require-package 'git-blame)
(require-package 'git-commit-mode)
(require-package 'git-rebase-mode)
(require-package 'gitignore-mode)
(require-package 'gitconfig-mode)
(require-package 'git-messenger)

(setq-default
 magit-save-some-buffers nil
 magit-process-popup-time 10
 magit-diff-refine-hunk t
 magit-completing-read-function 'magit-ido-completing-read)

;; Hint: customize `magit-repo-dirs' so that you can use C-u M-F12 to
;; quickly open magit on any one of your projects.
(global-set-key [(meta f12)] 'magit-status)

(after-load 'magit
  (define-key magit-status-mode-map (kbd "C-M-<up>") 'magit-goto-parent-section))

(require-package 'fullframe)
(after-load 'magit
  (fullframe magit-status magit-mode-quit-window))

;;; When we start working on git-backed files, use git-wip if available

(after-load 'magit
  (global-magit-wip-save-mode)
  (diminish 'magit-wip-save-mode))

(after-load 'magit
  (diminish 'magit-auto-revert-mode))

;; Convenient binding for vc-git-grep
(global-set-key (kbd "C-x v f") 'vc-git-grep)

(require-package 'git-messenger)
(global-set-key (kbd "C-x v p") #'git-messenger:popup-message)

;;; github

(require-package 'yagist)
(require-package 'github-browse-file)
(require-package 'bug-reference-github)
(add-hook 'prog-mode-hook 'bug-reference-prog-mode)

(provide 'init-git)
