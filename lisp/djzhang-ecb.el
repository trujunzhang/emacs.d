;;; Code

;; 4. Load ECB by adding code to your `.emacs':

;; If you want to load the complete ECB at (X)Emacs-loadtime (Advantage:All ECB-options available after loading ECB. Disadvantage: Increasing loadtime(2)):

(require 'ecb)

;;If you want to load the ECB first after starting it by `ecb-activate'(Advantage: Fast loading(3).
;;Disadvantage: ECB- and semantic-options first available after starting ECB):

;;(require 'ecb-autoloads)


;;; activate and deactivate ecb
(global-set-key (kbd "C-x C-;") 'ecb-activate)
(global-set-key (kbd "C-x C-'") 'ecb-deactivate)


(provide 'djzhang-ecb)
