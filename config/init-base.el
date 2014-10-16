;;; 基本配置

;; 设置个人信息
(setq user-full-name "pein")
(setq user-mail-address "pein0119@gmail.com")

;; 将垃圾回收的阈值设置为50M
(setq gc-cons-threshold 50000000)

;; emacs调试信息
(setq message-log-max 10000)

;; 设置默认工作目录
(setq default-directory "~/workspace/") 

;; M-X 输入命令时有提示
(icomplete-mode t)

;; buffer在外部改动时，自动刷新buffer
(global-auto-revert-mode 1)

;; 在行首 C-k 时，同时删除该行。
(setq-default kill-whole-line t)

;; 尽快显示按键序列
(setq echo-keystrokes 0.001)

;; 支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;; 将删除的文件移到回收站
(setq delete-by-moving-to-trash t)

;; 将yes/no改为y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 加密显示密码
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

;; 光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(mouse-avoidance-mode 'animate)

;; 不保存连续的重复的kill
(setq kill-do-not-save-duplicates t)

;; 不要闪烁光标
(blink-cursor-mode -1)

;; 设置默认编码
(setq buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
