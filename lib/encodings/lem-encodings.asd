;;don't edit
(asdf:defsystem "lem-encodings"
  :depends-on (:LEM-BASE)
  :components
  ((:FILE "table")
   (:FILE "8bit")
   (:FILE "gb2312")
   (:FILE "euc-jp")
   (:FILE "cp932")
   (:FILE "iso-8859-1")
   (:FILE "utf-8")
   (:FILE "utf-16")))

