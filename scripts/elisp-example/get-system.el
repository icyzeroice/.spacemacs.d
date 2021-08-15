

;; (pcase system-type
;;   ('darwin (progn (print 1)
;;                   (print 2)))
;;   ('windows-nt (progn (print 3)
;;                       (print 4)))
;;   ('gnu/linux (progn (print 6)))
;;   (code (progn (print 5)
;;                (print system-type))))


(message (shell-command-to-string "uname -a"))

;; (print (string-match "microsoft" (shell-command-to-string "uname -a")))


(defun icing/is-wsl ()
  (equal system-type 'gnu/linux))

;; (message (icing/is-wsl))

