
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

(require 'helm)
(helm-mode 1)
(load-theme 'monokai t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
;; 快速打开配置文件
;;打开窗口时会自动跳转光标到新的窗口
(require 'popwin)
(popwin-mode t)
(global-auto-revert-mode t)
(setq auto-save-default nil)
(setq make-backup-files nil);
(global-auto-revert-mode 1)
(global-set-key (kbd "s-/") 'hippie-expand)
(require 'org)
(setq org-src-fontify-natively t)
;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)
;;在init.el中添加
;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(global-linum-mode 1)
;; 更改光标的样式（不能生效，解决方案见第二集）
(tool-bar-mode -1)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; 关闭文件滑动控件
(scroll-bar-mode -1)
(global-company-mode 1)
(require 'smartparens-config)
(add-hook 'emacs-lisp-mode-hook 'smartparens-global-mode)
(setq cursor-type 'bar)
(fset 'yes-or-no-p 'y-or-n-p)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;; 按下C-x k立即关闭掉当前的buffer
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;;C-return 在当前行上新开一行
(global-set-key (kbd "<C-return>") 'open-line-above )

;; 关闭缩进 (第二天中被去除)
;; (electric-indent-mode -1)
(delete-selection-mode 1)
(global-hl-line-mode 1)
(global-set-key (kbd "s-/") 'hippie-expand)

;;目录操作
(put 'dired-find-alternate-file 'disabled nil)
(require 'dired-x)
(setq dired-dwim-target t)

;; 显示行号
(provide 'init-packages)
