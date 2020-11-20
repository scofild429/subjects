;;; package --- Summary
;;; Commentary:
(require 'package)
;;; Code :
(setq package-enable-at-startup nil)
(add-to-list 'package-archives  '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'package-archives
	     '("melpa2" . "http://www.mirrorservice.org/sites/melpa.org/packages/"))

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(add-to-list 'package-archives
	     '("melpa3" . "http://www.mirrorservice.org/sites/stable.melpa.org/packages/"))

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))


(package-initialize)
;;(setq warning-minimum-level :emergency)
;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"])
 '(custom-enabled-themes (quote (spacemacs-dark)))
 '(custom-safe-themes
   (quote
    ("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default)))
 '(hl-todo-keyword-faces
   (quote
    (("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#3a81c3")
     ("OKAY" . "#3a81c3")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#42ae2c")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f"))))
 '(org-confirm-babel-evaluate nil)
 '(org-default-notes-file (concat org-directory "/Note.org"))
 '(org-directory "~/Dropbox/Note/")
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-src-fontify-natively t)
 '(org-startup-folded (quote overview))
 '(org-startup-indented t)
 '(package-selected-packages
   (quote
    (ac-ispell helm-ispell helm-flycheck fold-this yasnippet-snippets which-key wgrep-ag web-mode virtualenvwrapper use-package undo-tree try tern-auto-complete sqlite3 spacemacs-theme simple-mpc py-autopep8 projectile pcre2el origami org-roam-server org-mind-map org-bullets ob-html-chrome noflet mingus magit js2-refactor irony-eldoc impatient-mode hydra helm-org-rifle haskell-mode grip-mode flycheck-irony emmet-mode elpy easy-kill default-text-scale counsel company-jedi company-irony-c-headers company-irony cnfonts cmake-ide auto-yasnippet auctex atomic-chrome all-the-icons-ivy all-the-icons-dired ag ace-window ac-js2)))
 '(pdf-view-midnight-colors (quote ("#655370" . "#fbf8ef"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
