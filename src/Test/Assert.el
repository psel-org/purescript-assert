;; -*- lexical-binding: t; -*-

(require 'psel)

(defvar Test.Assert.assertImpl
  (lambda (message)
    (lambda (success)
      (lambda ()
        (when (not success)
          (psel/assert-error message))))))

(defvar Test.Assert.checkThrows
  (lambda (fn)
    (lambda ()
      (condition-case err
          (progn
            (funcall fn)
            nil)
        (t t)))))
