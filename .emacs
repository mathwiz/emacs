(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(setq inferior-lisp-program
  "C:\\Software\\clisp-2.49\\full\\lisp.exe -B C:\\Software\\clisp-2.49\\full
-M C:\\Software\\clisp-2.49\\full\\lispinit.mem
-ansi -q")
(add-to-list 'load-path "C:\\Users\\Yohan\\Documents\\.emacs.d\\elpa\\slime-20150102.1206")
(require 'slime)
(require 'slime-autoloads)
;; Also setup the slime-fancy contrib
(add-to-list 'slime-contribs 'slime-fancy)
(slime-setup)
(add-to-list 'auto-mode-alist '("\\.cl\\'" . slime-mode))
