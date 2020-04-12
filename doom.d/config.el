;;; .doom.d/config.el -*- lexical-binding: t; -*-

;;; Theme and font

(setq doom-theme 'doom-nord)
(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'regular))
(if (fboundp 'mac-auto-operator-composition-mode)
    (mac-auto-operator-composition-mode))
(setq-default line-spacing 0.2)
(setq-default line-spacing-vertical-center 1)
(setq fill-column 90)

; Workaround for sort: Args out of range
; from https://github.com/seagle0128/doom-modeline/issues/232#issuecomment-544144235
(setq internal-lisp-face-attributes
  [nil
   :family :foundry :swidth :height :weight :slant :underline :inverse
   :foreground :background :stipple :overline :strike :box
   :font :inherit :fontset :vector :extend])

;; no line numbers
(remove-hook! '(prog-mode-hook text-mode-hook conf-mode-hook)
  #'display-line-numbers-mode)

; For emacs-mac
(push '(mac-transparent-titlebar . 1) default-frame-alist)
(push '(mac-hide-document-icon . 1) default-frame-alist)

; For emacs-plus
(push '(ns-transparent-titlebar . t) default-frame-alist)
(push '(ns-hide-document-icon . t) default-frame-alist)
(push '(ns-appearance . dark) default-frame-alist)

;;; Ivy

;;; Evil

(setq-default evil-kill-on-visual-paste nil)

;; Don't exit insert mode after typing 'jk'
(after! evil-escape (evil-escape-mode -1))

(map! :i "C-p" #'previous-line
      :i "C-n" #'next-line)

;;; org
(after! org
  (setq +org-capture-todo-file "inbox.org")
  (setq auto-save-visited-interval 15)
  (add-hook! 'org-mode-hook #'auto-save-visited-mode))

;;; email
(after! notmuch
  (setq +notmuch-sync-backend 'mbsync))

;;; latex
(after! latex
  (when (assoc "Skim" TeX-view-program-list)
    (when-let
        (app-path
         (and IS-MAC
              (file-exists-p! (or "/Applications/Skim.app"
                                  "~/Applications/Skim.app"))))
      (setf (cadr (assoc "Skim" TeX-view-program-list))
            (format "%s/Contents/SharedSupport/displayline -r -b -g %%n %%o %%b"
                    app-path)))))


;;; rust
(setq lsp-rust-server 'rust-analyzer)

;;; misc
(after! flyspell
  (setq ispell-dictionary "en_US"))

(setq enable-dir-local-variables nil)
