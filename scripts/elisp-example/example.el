;; use `<SPC> m e c' to compile
;; (print (member "Source Code Pro" (font-family-list)))
;; (print (member "STHeitiSC" (font-family-list)))
;; (print (member "Sarasa Gothic SC" (font-family-list)))
;; (print (member "更纱黑体 UI SC" (font-family-list)))
;; (message (member "Microsoft Yahei Mono" (font-family-list)))
;; (print (font-family-list))
;; (dolist (name (font-family-list))
;;   (print name))

(pcase system-type
  ('darwin (progn (print 1)
                  (print 2)))
  ('windows-nt (progn (print 3)
                      (print 4)))
  (code (progn (print 5)
               (print system-type))))


