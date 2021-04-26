(defpackage normal-dev/test (:use :cl :rove))

(in-package :normal-dev/test)

(deftest no-error
  (testing "Calling without error."
    (normal-dev:nrand) (pass "OK")))

(deftest performance
  (time (dotimes (it 1000000 t) (normal-dev:nrand))))
