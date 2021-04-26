(defsystem normal-dev
  :name "normal-dev"
  :author "Thomas HOULLIER"
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "normal-dev" :depends-on ("package")))))
  :in-order-to ((test-op (test-op "normal-dev/test"))))

(defsystem normal-dev/test
  :name "normal-dev/test"
  :depends-on ("rove" "normal-dev")
  :components
  ((:module "test"
    :components ((:file "rove-suite"))))
  :perform (test-op (o c) (symbol-call :rove '#:run c)))
