(defpackage #:minilem-shim
  (:use :cl)
  (:export
   #:asdf-system-relative-pathname-lem-encodings))
(in-package :minilem-shim)

;;In order to remove the usage of asdf-system-relative-pathname to
;;keep encoding tables in a nested folder.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun asdf-system-relative-pathname-lem-encodings  (path)
    (asdf:system-relative-pathname :minilem (merge-pathnames path "res/"))))
