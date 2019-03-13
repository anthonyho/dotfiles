;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" system-name))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock))
 '(load-home-init-file t t)
 '(org-agenda-files (quote ("~/notes.org")))
 '(package-selected-packages (quote (csharp-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "hlv"))))
 '(org-level-1 ((t (:foreground "blue2" :weight bold))))
 '(org-level-2 ((t (:foreground "green3" :weight bold))))
 '(org-level-3 ((t (:foreground "cyan3" :weight bold))))
 '(org-level-4 ((t (:foreground "magenta3" :weight bold))))
 '(org-level-5 ((t (:foreground "blue4"))))
 '(org-level-6 ((t (:foreground "cyan4"))))
 '(org-level-7 ((t (:foreground "green4"))))
 '(org-level-8 ((t (:foreground "magenta4")))))


;;-------------- showing date and time on status bar------------------
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)


;; Use one of the following font-lock things
;; (global-font-lock-mode 1)                    ; for all buffers 
(add-hook 'org-mode-hook 'turn-on-font-lock) ; Org buffers only




(setq ispell-program-name "/usr/local/bin/aspell")
(setq ispell-dictionary-alist
      '((nil
	  "[A-Za-z]" "[^A-Za-z]" "[']" nil
	   ("-B" "-d" "english" "--dict-dir"
	      "/Library/Application Support/cocoAspell/aspell6-en-6.0-0")
	    nil iso-8859-1)))


;;-------------- org mode ------------------
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
