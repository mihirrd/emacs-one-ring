;;; init.el --- Description -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2023 Apurva Pavaskar
;;
;; Author: Apurva Pavaskar <https://gitlab.com/apavaskar>
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Description
;;
;;; Code:

(use-package gcmh
  :ensure t
  :config (gcmh-mode))

(org-babel-load-file (expand-file-name (concat user-emacs-directory "config.org")))

(provide 'init)
;;; init.el ends here
