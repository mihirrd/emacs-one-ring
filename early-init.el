;;; early-init.el --- Description -*- lexical-binding: t; -*-
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

;; Disable menu-bar, as it can still be accessed via 'F10'.
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq custom-safe-themes t
      inhibit-startup-screen t
      frame-inhibit-implied-resize t)

;; One can download Emacs packages from various archives
;; (repositories). The following adds "MELPA" [a package archive] to
;; the default list of archives, which includes "ELPA".
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(setq use-package-always-ensure t)

(provide 'early-init)
;;; early-init.el ends here
