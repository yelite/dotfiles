;;; .doom.d/config.el -*- lexical-binding: t; -*-

;;; Theme and font

(setq doom-theme 'doom-nord)
(setq doom-font (font-spec :family "Menlo" :size 12 :weight 'regular))
(setq line-spacing 0.2)

;; no line numbers
(remove-hook! '(prog-mode-hook text-mode-hook conf-mode-hook)
              #'display-line-numbers-mode)

(push '(mac-transparent-titlebar . 1) default-frame-alist)
(push '(mac-hide-document-icon . 1) default-frame-alist)

;;; Ivy

;;; Evil

;; Don't exit insert mode after typing 'jk'
(after! evil-escape (evil-escape-mode -1))

(map! :i "C-p" #'previous-line
      :i "C-n" #'next-line)

;;; org
(after! org
  (setq +org-capture-todo-file "inbox.org"))
