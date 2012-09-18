
(setq erl-top "/usr/lib/erlang")

(setq erlang-root-dir "/usr/lib/erlang")
(setq tools-ver "2.6.7")
(setq load-path (cons (concat erlang-root-dir "/lib/tools-" tools-ver "/emacs")
                      load-path))
(setq exec-path (cons (concat erlang-root-dir "/bin")
                      exec-path))

(require 'erlang-start)
(require 'distel)
(distel-setup)

;; Wrangler

;; install with brew!
(add-to-list 'load-path
             "/usr/local/Cellar/wrangler/0.9.3.1/share/wrangler/elisp")
(require 'wrangler)

(add-hook 'erlang-mode-hook 'esk-prog-mode-hook)

;; Align (thanks @eproxus)
(add-hook 'align-load-hook
          (lambda ()
            (add-to-list 'align-rules-list
                         '(erlang-align
                           (regexp . ",\\(\\s-+\\)")
                           (repeat . t)
                           (modes quote (erlang-mode))))))


