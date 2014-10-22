;; .emacs

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" system-name))
(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock)))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )


;;-------------- showing date and time on status bar------------------
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)


;; Use one of the following font-lock things
;; (global-font-lock-mode 1)                    ; for all buffers 
(add-hook 'org-mode-hook 'turn-on-font-lock) ; Org buffers only

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(load-home-init-file t t)
 '(org-agenda-files (quote ("~/notes.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
;; '(default ((t (:height 120 :family "nimbus mono"))))
 '(default ((t (:family "hlv"))))
 '(org-level-1 ((t (:foreground "blue2" :weight bold))))
 '(org-level-2 ((t (:foreground "green3" :weight bold))))
 '(org-level-3 ((t (:foreground "cyan3" :weight bold))))
 '(org-level-4 ((t (:foreground "magenta3" :weight bold))))
 '(org-level-5 ((t (:foreground "blue4"))))
 '(org-level-6 ((t (:foreground "cyan4"))))
 '(org-level-7 ((t (:foreground "green4"))))
 '(org-level-8 ((t (:foreground "magenta4")))))

(setq ispell-program-name "/usr/local/bin/aspell")
(setq ispell-dictionary-alist
      '((nil
	  "[A-Za-z]" "[^A-Za-z]" "[']" nil
	   ("-B" "-d" "english" "--dict-dir"
	      "/Library/Application Support/cocoAspell/aspell6-en-6.0-0")
	    nil iso-8859-1)))