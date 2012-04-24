


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(default-input-method "rfc1345")
 '(global-font-lock-mode t nil (font-lock))
 '(indent-tabs-mode nil)
 '(mouse-wheel-mode t nil (mwheel))
 '(show-paren-mode t nil (paren))
 '(tab-width 4))
 '(py-pychecker-command "/ganoop/emacs23.4/bin/pychecker.sh")
 '(py-pychecker-command-args (quote ("")))
 '(python-check-command "/ganoop/emacs23.4/bin/pychecker.sh")

(when (load "flymake" t) 
         (defun flymake-pyflakes-init () 
           (let* ((temp-file (flymake-init-create-temp-buffer-copy 
                              'flymake-create-temp-inplace)) 
              (local-file (file-relative-name 
                           temp-file 
                           (file-name-directory buffer-file-name)))) 
             (list "/ganoop/emacs23.4/bin/pychecker.sh" (list local-file)))) 

         (add-to-list 'flymake-allowed-file-name-masks 
                  '("\\.py\\'" flymake-pyflakes-init))) 

   (add-hook 'find-file-hook 'flymake-find-file-hook)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;; pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(setq x-select-enable-clipboard t)

(require 'dired-x)
;;(autoload 'dtml-mode "html-mode" nil t)

(column-number-mode 1)
(setq tags-table-list
           '("/ganoop/interface/jiva5_interface" "/ganoop/interface/jiva5_interface/eggs/"))

;;(autoload 'dtml-mode "dtml-mode" "" t)
;;(autoload 'dtml-edit-via-ftp "dtml-mode" "" t)
;;(autoload 'dtml-browse-via-http "dtml-mode" "" t)

;(require 'dtml-mode)
;(require 'zpt-mode)
;; Subversion stuff
;(require 'psvn)
;(require 'vc-svn)
;(require 'ipython)
;(pymacs-load "bikeemacs" "brm-")
;(brm-init)
;;(autoload 'python-mode "python-mode" "Python editing mode." t)
;(setq auto-mode-alist
;      (cons '("\\.py$" . python-mode) auto-mode-alist))
; goto-line binding

(add-to-list 'load-path
             "~/.emacs.d/plugins")

(global-set-key "\M-g" 'goto-line) 
(global-set-key "\M-b" 'list-buffers)
(global-set-key "\M-1" 'find-tag)
(global-set-key "\M-t" 'find-tag-other-window)
(global-set-key "\M-r" 'pop-tag-mark)

;;(require 'yasnippet-bundle)
;(global-set-key "\M-g" 'goto-line) 
;(glogal-set-key "\M-b" 'list-buffers)
;(glogal-set-key "\M-o" 'list-buffers')

;; auto load functionality

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "/ganoop/emacs23.4/share/emacs/site-lisp/magit")
(require 'magit)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

(set-default-font "-adobe-courier-medium-r-normal--18-180-75-75-m-110-iso8859-1")

;;(setq default-frame-alist
;;      '((top  200) (left  400)
;;       (width  80) (height 400)))
;;        (cursor-color . "white")
;;        (cursor-type . box)
;;        (foreground-color . "white")
;;        (background-color . "black")


(set-background-color "black")
(set-foreground-color "white")
(set-cursor-color "white")

(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
                         (if (equal 'fullboth current-value)
                             (if (boundp 'old-fullscreen) old-fullscreen nil)
                           (progn (setq old-fullscreen current-value)
                            'fullboth))))
(set-background-color "black")
(set-foreground-color "white")
(set-cursor-color "white")
(set-default-font "-adobe-courier-medium-r-normal--18-180-75-75-m-110-iso8859-1")
)

(global-set-key [f11] 'toggle-fullscreen)

;; Make new frames fullscreen by default. Note: this hook doesn't do
;; anything to the initial frame if it's in your .emacs, since that file is
;; read _after_ the initial frame is created.
(add-hook 'after-make-frame-functions 'toggle-fullscreen)

(require 'iflipb) 
(global-set-key (kbd "<f10>") 'iflipb-next-buffer)
(global-set-key (kbd "<f9>")  'iflipb-previous-buffer)

;;(and window-system
;;     (setq screen-width (x-display-pixel-width)
;;        screen-height (x-display-pixel-height)))52
