(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

(setq org-default-notes-file "~/org/notes.org")
(setq org-capture-templates
      '(("t" "Task" entry (file+headline "~/org/notes.org" "Tasks")
         "* TODO %?\n  %i\n  %a")))

(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
(setq org-log-done 'note)

(add-hook 'org-mode-hook 'my-org-mode-autosave-settings)
(defun my-org-mode-autosave-settings
  ;; (auto-save-mode 1)   ; this is unecessary as it is on by default
  (set (make-local-variable 'auto-save-visited-file-name) t)
  (setq auto-save-interval 20))
