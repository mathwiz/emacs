;; C

(fset 'int-main
   (kmacro-lambda-form [?i ?n ?t ?  ?m ?a ?i ?n ?\( ?v ?o ?i ?d ?\) ?  ?\{ ?\C-m ?\C-m ?\C-i ?r ?e ?t ?u ?r ?n ?  ?0 ?\; ?\C-m ?\} ?\C-p ?\C-p ?\C-i] 0 "%d"))

;; Give keybinding
(global-set-key "\C-x\C-km" 'int-main)



;; Python

(defcustom python-shell-interpreter "python3"
  "Default Python interpreter for shell."
  :type 'string
  :group 'python)


