(defsystem normal-dev
  :name "normal-dev"
  :author "Thomas HOULLIER"
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "normal-dev" :depends-on ("package"))))))
