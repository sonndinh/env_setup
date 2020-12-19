;; this is for keyboard
(setq scroll-step 1) ;; keyboard scroll one line at a time
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(defvaralias 'c-basic-offset 'tab-width)
(setq js-indent-level 2)
(setq column-number-mode t)

;; Zero indent within C++ namespaces
(defconst my-cc-style
  '("gnu"
    (c-offsets-alist . ((innamespace . [0])))))

(c-add-style "my-cc-style" my-cc-style)
(add-hook 'c++-mode-hook (lambda () (c-set-style "my-cc-style") ))
(add-to-list 'auto-mode-alist '("\\.inl\\'" . c++-mode))

;; Python mode
(add-hook 'python-mode-hook (lambda () (setq python-indent 2)))

;; Groovy mode
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(add-hook 'groovy-mode-hook (lambda () (c-set-offset 'label 2)))
;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(package-selected-packages (quote (groovy-mode))))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;;)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
;; smooth scrolling
;; this is for mouse wheel
(setq mouse-wheel-scroll-amount '(1 ((shift) .1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; dont accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
