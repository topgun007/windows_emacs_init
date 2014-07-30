
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (manoj-dark)))
 '(c-default-style (quote ((c-mode . ""))))
 '(c-max-one-liner-length 132)
 '(c-syntactic-indentation t)
 '(tramp-mode t))
 (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; make buffer switch command auto suggestions, also for find file command
(ido-mode 1)

;; display any item that contains chars types
(setq ido-enable-flex-matching t)

;; make use space instead of TABS
(setq-default indent-tabs-mode nil)

;; set default TAB width to 2 chars
(setq-default tab-width 2)

;; set current buffer's tab char's display width to 2
(setq tab-width 2)

;; make TAB key indent code
;;(setq-default tab-always-indent 'complete)

;; Indent on return
(setq-default electric-indent-mode 1)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )

;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;; macro to allign c code along with =
(fset 'mk_align_eq
   "\C-[xalign\C-i-re\C-i\C-m=\C-m")
(global-set-key "\M-=" 'mk_align_eq) ; assign keyboard binding for macro

;; Enable yas mode
(setq-default yas-global-mode 1)


;; stop using ARROW keys
(global-unset-key [left])
(global-unset-key [up])
(global-unset-key [right])
(global-unset-key [down])

