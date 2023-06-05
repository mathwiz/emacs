;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)


;; Language specific settings
(add-to-list 'auto-mode-alist '("\\.cl\\'" . lisp-mode))
(add-to-list 'auto-mode-alist '("\\.gst\\'" . smalltalk-mode))

;; Lisp
(setq inferior-lisp-program
"/usr/local/bin/clisp")
(require 'slime)
(require 'slime-autoloads)
;; Also setup the slime-fancy contrib
(add-to-list 'slime-contribs 'slime-fancy)
(slime-setup)


;; Octave 
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
      
(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))

