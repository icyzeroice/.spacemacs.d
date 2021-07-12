;; use `<SPC> m e c' to compile
;; (print (member "Source Code Pro" (font-family-list)))
;; (print (member "STHeitiSC" (font-family-list)))
;; (print (member "Sarasa Gothic SC" (font-family-list)))
;; (print (member "更纱黑体 UI SC" (font-family-list)))
;; (message (member "Microsoft Yahei Mono" (font-family-list)))
;; (print (font-family-list))
;; (dolist (name (font-family-list))
;;   (print name))

;; (pcase system-type
;;   ('darwin (progn (print 1)
;;                   (print 2)))
;;   ('windows-nt (progn (print 3)
;;                       (print 4)))
;;   ('gnu/linux (progn (print 6)))
;;   (code (progn (print 5)
;;                (print system-type))))


(message (getenv "proxy"))

(message (shell-command-to-string "uname -a"))

;; (print (string-match "microsoft" (shell-command-to-string "uname -a")))


(defun icing/is-wsl ()
  (equal system-type 'gnu/linux))

;; (message (icing/is-wsl))
