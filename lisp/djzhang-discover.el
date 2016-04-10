;;; Code


;;; Third-party module support

;; If you want to support discover.el you must use the function discover-add-context-menu, like so:

(discover-add-context-menu
 :context-menu '(isearch
                 (description "Isearch, occur and highlighting")
                 (lisp-switches
                  ("-cf" "Case should fold search" case-fold-search t nil))
                 (lisp-arguments
                  ("=l" "context lines to show (occur)"
                   "list-matching-lines-default-context-lines"
                   (lambda (dummy) (interactive) (read-number "Number of context lines to show: "))))
                 (actions
                  ("Isearch"
                   ("_" "isearch forward symbol" isearch-forward-symbol)
                   ("w" "isearch forward word" isearch-forward-word))
                  ("Occur"
                   ("o" "occur" occur))
                  ("More"
                   ("h" "highlighters ..." makey-key-mode-popup-isearch-highlight))))
 :bind "M-s")
This will create a keybinding M-s against discover-mode, making it generally available.



(provide 'djzhang-discover)
