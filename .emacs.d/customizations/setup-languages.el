;;;;;;;;;;;
;; Python
;;;;;;;;;;;
(when (executable-find "ipython3")
  (setq python-shell-interpreter "ipython3"))

;;;;;;;;;
;; Perl
;;;;;;;;;
(defalias 'perl-mode 'cperl-mode)
