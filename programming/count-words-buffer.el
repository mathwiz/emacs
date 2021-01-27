(defun count-words-buffer ()
  "Show in minibuffer the word count of buffer"
  (interactive)
  (save-excursion
    (let ((count 0))
     (goto-char (point-min))
     (while (< (point) (point-max))
       (forward-word 1)
       (setq count (1+ count)))
     (message "buffer cointains %d words" count))))




