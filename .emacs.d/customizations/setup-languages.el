;; C

(fset 'c-int-main
   (kmacro-lambda-form [?\C-\[ ?\[ ?O ?\C-\[ ?\[ ?I ?i ?n ?t ?  ?m ?a ?i ?n ?\C-\[ ?\[ ?O ?\C-\[ ?\[ ?I ?\( ?i ?n ?t ?  ?a ?r ?g ?c ?, ?  ?\C-\[ ?\[ ?O ?\C-\[ ?\[ ?I ?c ?o ?n ?s ?t ?  ?c ?h ?a ?r ?  ?* ?  ?a ?r ?g ?v ?\[ ?\] ?\) ?\C-\[ ?\[ ?O ?\C-\[ ?\[ ?I ?\C-m ?\{ ?\C-m ?\C-i ?r ?e ?t ?u ?r ?n ?  ?0 ?\; ?\C-m ?\} ?\C-p ?\C-p ?\C-m ?\C-i] 0 "%d"))


(fset 'c-int-main-void
   (kmacro-lambda-form [?i ?n ?t ?  ?m ?a ?i ?n ?\( ?v ?o ?i ?d ?\) ?  ?\{ ?\C-m ?\C-m ?\C-i ?r ?e ?t ?u ?r ?n ?  ?0 ?\; ?\C-m ?\} ?\C-p ?\C-p ?\C-i] 0 "%d"))

;; Give keybinding
(global-set-key "\C-x\C-ym" 'c-int-main)



;; Python

(defcustom python-shell-interpreter "python3"
  "Default Python interpreter for shell."
  :type 'string
  :group 'python)


;; Lisp

(fset 'lisp-insert-let
   (kmacro-lambda-form [?\( ?l ?e ?t ?  ?\( ?\( ?v ?a ?r ?1 ?  ?n ?i ?l ?\) ?  ?\( ?v ?a ?r ?2 ?  ?n ?i ?l ?\) ?\) ?\C-m ?b ?o ?d ?y ?\) ?\C-@ ?\C-\[ ?b ?\C-\[ ?b ?\C-\[ ?b ?\C-\[ ?b ?\C-\[ ?b ?\C-\[ ?b ?\C-b ?\C-\[ ?x ?e ?l ?i ?s ?p ?- ?f ?o ?r ?m ?a ?t ?- ?r ?e ?g ?i ?o ?n ?\C-m ?\C-\[ ?f ?\C-\[ ?f] 0 "%d"))

;; Give keybinding
(global-set-key "\C-x\C-yl" 'lisp-insert-let)

