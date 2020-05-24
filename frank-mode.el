;;; frank-mode.el -*- lexical-binding: t; -*-

;; Syntax table for Frank.
;; lets comments be highlighted as such
(defconst frank-mode-syntax-table
  (let ((st (make-syntax-table)))
    ;; `--` starts a comment
    (modify-syntax-entry ?- ". 12" st)
    ;; newline ends a comment
    (modify-syntax-entry ?\n ">" st)
    st)
  "Syntax table for Frank mode")


(define-derived-mode frank-mode fundamental-mode "Frank"
  "Major mode for editing Frank files."
  :syntax-table frank-mode-syntax-table
  (font-lock-ensure)
  (display-line-numbers-mode)
  )

(provide 'frank-mode)
