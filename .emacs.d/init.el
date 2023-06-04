(require 'package) ;; You might already have this line
;; (add-to-list 'package-archives
;;              '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


;; Lisp
(setq inferior-lisp-program
"/usr/local/bin/clisp")
(require 'slime)
(require 'slime-autoloads)
;; Also setup the slime-fancy contrib
(add-to-list 'slime-contribs 'slime-fancy)
(slime-setup)
(add-to-list 'auto-mode-alist '("\\.cl\\'" . slime-mode))
(add-to-list 'auto-mode-alist '("\\.gst\\'" . smalltalk-mode))


;; Octave customizations
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
      
(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))


;; Turn on abbreviations
(setq-default abbrev-mode t)
(read-abbrev-file "~/.abbrev_defs")
(setq save-abbrevs t)
;; use pabbrev too
(setq-default pabbrev-mode t)

;; Load functions
(add-to-list 'load-path "~/.emacs.d/functions")
(load "goto-percent")



;; #########################################################
;; Clojure customizations
;; #########################################################
;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; Place downloaded elisp files in ~/.emacs.d/vendor. You'll then be able
;; to load them.
;;
;; For example, if you download yaml-mode.el to ~/.emacs.d/vendor,
;; then you can add the following code to this file:
;;
;; (require 'yaml-mode)
;; (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
;; 
;; Adding this code will make Emacs enter yaml mode whenever you open
;; a .yml file
(add-to-list 'load-path "~/.emacs.d/vendor")


;;;;
;; Customization
;;;;

;; Add a directory to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding file.
(add-to-list 'load-path "~/.emacs.d/customizations")

;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
;(load "shell-integration.el")

;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")

;; These customizations make editing a bit nicer.
(load "editing.el")
(load "general-macros.el")

;; Hard-to-categorize customizations
(load "misc.el")

;; For editing lisps
(load "elisp-editing.el")

;; Langauage-specific
(load "setup-clojure.el")
;(load "setup-js.el")
(load "setup-languages.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(geiser-chez-binary "chez")
 '(geiser-racket-binary "~/Bin/racket")
 '(package-selected-packages
   '(company-maxima slime-company use-package cape corfu-terminal corfu-prescient corfu pabbrev sbt-mode rainbow-delimiters geiser-chez geiser-racket geiser racket-mode clojure-mode-extra-font-locking cider markdown-preview-mode kotlin-mode groovy-mode cobol-mode xml-format mips-mode clojure-mode function-args bison-mode json-mode markdown-mode erlang elixir-mode scala-mode swift-mode julia-repl haskell-mode org-books sml-mode utop org format-all ghc-imported-from ghci-completion ghc gh ediprolog smalltalk-mode dante ess tuareg caml smex slime projectile paredit elisp-format))
 '(warning-suppress-log-types '(((python python-shell-completion-native-turn-on-maybe)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
