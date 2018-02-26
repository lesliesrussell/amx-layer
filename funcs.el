;;; funcs.el --- Amx Layer functions File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; I want credit to remain with the original author because all I did was change "smex" to "amx"
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defun spacemacs/amx ()
  "Execute amx with a better prompt."
  (interactive)
  (let ((amx-prompt-string "Emacs commands: "))
    (amx)))

(defun spacemacs/amx-major-mode-commands ()
  "Reexecute amx with major mode commands only."
  (interactive)
  (let ((amx-prompt-string (format "%s commands: " major-mode)))
    (amx-major-mode-commands)))
