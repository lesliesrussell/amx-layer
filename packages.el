;;; packages.el --- amx Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq amx-packages '(amx))

(defun amx/init-amx ()
  (use-package amx
    :defer t
    :init
    (progn
      (setq-default amx-history-length 32
                    amx-save-file (concat spacemacs-cache-directory
                                           ".amx-items"))
      ;; define the key binding at the very end in order to allow the user
      ;; to overwrite any key binding
      (add-hook 'emacs-startup-hook
                (lambda () (spacemacs/set-leader-keys
                             dotspacemacs-emacs-command-key 'spacemacs/amx)))
      (spacemacs/set-leader-keys ":" 'spacemacs/amx-major-mode-commands)
      (global-set-key (kbd "M-x") 'spacemacs/amx)
      (global-set-key (kbd "M-X") 'amx-major-mode-commands)
      
      )))
