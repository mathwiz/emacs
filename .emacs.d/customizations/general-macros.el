(defun unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text."
  (interactive (progn (barf-if-buffer-read-only) '(t)))
  (let ((fill-column (point-max))
        ;; This would override `fill-column' if it's an integer.
        (emacs-lisp-docstring-fill-column t))
    (fill-paragraph nil region)))


(define-key global-map "\M-Q" 'unfill-paragraph)


(fset 'copy-entire-line
   (kmacro-lambda-form [?\C-a ?\C-@ ?\C-n ?\C-\[ ?w ?\C-y ?\C-p] 0 "%d"))

(global-set-key "\C-x\M-w" 'copy-entire-line)
