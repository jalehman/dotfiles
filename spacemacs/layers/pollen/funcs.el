;;; funcs.el -- Pollen Layer functions file for Spacemacs

;; Author: Josh Lehman <jalehman37@gmail.com>

(defun spacemacs/pollen-insert-lozenge ()
  (interactive)
  (evil-insert-state)
  (insert pollen-command-char))
