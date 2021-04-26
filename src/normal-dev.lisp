;;;; Generating normal deviates
(in-package :normal-dev)

(defun normal-dev ()
  "Generate a pseudorandom number from a normal (Gaussian) distribution
   of zero mean and unit standard deviation."
  (let ((u) (v) (q))
    (loop do (multiple-value-setq (u v q) (draw-step))
          until (or (< q .27597d0)
                    (and (< q .27846d0)
                         (< (* v v) (* -4d0 (* u u) (log u))))))
    (/ v u)))

(defun draw-step ()
  "Draw u, v and compute rejection criterion Q from Leva 1992."
  (let* ((u (random 1d0))
         (v (* (- (random 1d0) .5d0) 1.7156d0))
         (x (- u .449871d0)) (y (+ (abs v) .386595d0))
         (q (+ (* x x) (* y (- (* .196d0 y) (* .25472d0 x))))))
    (values u v q)))
