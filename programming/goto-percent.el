(defun goto-percent (pct)
  (interactive "nPercent: ")
  (goto-char (/ (* pct (point-max)) 100)))
