;;; packages.el --- pollen layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Josh Lehman <argyre@argmac.local>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `pollen-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `pollen/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `pollen/pre-init-PACKAGE' and/or
;;   `pollen/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst pollen-packages
  '(
    company
    (pollen-mode :location elpa)
    (company-pollen :location elpa
                    :toggle (configuration-layer/package-usedp 'company))
    )
  "The list of Lisp packages required by the pollen layer.")

(defun pollen/post-init-company ()
  (spacemacs|add-company-hook pollen-mode)
  ;; (push 'company-pollen-backend 'company-backends)
  )

(defun pollen/init-pollen-mode ()
  (use-package pollen-mode
    :mode ("\\.pm\\'" . pollen-mode)
    :defer t
    :init
    (progn
      (spacemacs/set-leader-keys-for-major-mode 'pollen-mode
        "i" 'spacemacs/pollen-insert-lozenge))))

(defun pollen/init-company-pollen ()
  (use-package company-pollen
    :defer t))

;;; packages.el ends here
