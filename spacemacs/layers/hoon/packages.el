;; Hoon mode

(defconst hoon-packages
  '(
    (hoon-mode :location local)
    ))

(defun hoon/init-hoon-mode ()
  (use-package hoon-mode
    :mode ("\\.hoon\\'" . hoon-mode)
    :defer t))
