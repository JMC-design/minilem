;;;;Combined from:
;; ./lib/lisp-syntax/lem-lisp-syntax.asd
;; ./lib/encodings/lem-encodings.asd
;; ./lib/core/lem-core.asd
;; ./lib/base/lem-base.asd
;; ./lem.asd
;; ./modes/vi-mode/lem-vi-mode.asd
;; ./modes/paredit-mode/lem-paredit-mode.asd
;; ./modes/lisp-mode/lem-lisp-mode.asd


(defsystem "minilem"
  :version "1.6"
  :license "MIT"
  :description "A bare-bones emacs-like lisp editor"
  :author "cxxxr, snmsts, fukamachi, gos-k, Hamayama, jessymilare, t-cool, jessymilare, t-cool, stacksmith, t-sin, nz-tcoder, myaosato, svetlyak40wt, kenoss, picospuch, koji-kojiro, asood123, KeenS, gmasching, g000001, talenbartlett, masatoi, i-makinori, agmm, Hextstream, FemtoEmacs, Fedreg"
  :depends-on
  (
   ;;<LEM-BASE>
   "uiop"
   "iterate"
   "alexandria"
   "cl-ppcre"
   "babel"
   ;;</LEM-BASE>
   
   ;;<LEM-LISP-SYNTAX>
   ;;"lem-base"
   ;;"cl-ppcre"
   ;;"swank"
   ;;</LEM-LISP-SYNTAX>
   
   ;;<LEM-ENCODINGS>
   ;;"lem-base"
   ;;</LEM-ENCODINGS>
   
   ;;<LEM-CORE>
   ;;"uiop"
   ;;"alexandria"
   "swank"
   "trivial-gray-streams"
   ;;"cl-ppcre"
   "inquisitor"
   ;;"babel"
   "bordeaux-threads"
   "yason"
   "cl-fad"
   ;;"lem-base"
   ;;"lem-encodings"
   ;;"lem-lisp-syntax"
   "log4cl"
   ;;</LEM-CORE>

   ;;<LEM-LISP-MODE>
   ;;"alexandria"
   "trivial-types"
   "usocket"
   ;;"swank"
   "optima"
   ;;"uiop"
   ;;"lem-core"
   ;;</LEM-LISP-MODE>

   ;;<LEM-PAREDIT-MODE>
   ;;"lem-core"
   ;;"lem-vi-mode"
   ;;<LEM-PAREDIT-MODE>
   ;;"lem-lisp-mode"
   ;;"lem-paredit-mode"

   ;;<LEM-VI-MODE>
   "esrap"
   ;;"lem-core"
   ;;</LEM-VI-MODE>
   )
  :serial t
  :components
  ((:file "shim")
   (:module
     "lib"
     :components
     (
      ;;<LEM-LISP-SYNTAX>
      (:module
       "lisp-syntax"
       :depends-on ("base")
       :serial t
       :components
       ((:file "indent")
	(:file "syntax-table")
	(:file "misc")
	(:file "enclosing")
	(:file "parse")
	(:file "lem-lisp-syntax")))
      ;;<LEM-LISP-SYNTAX>
      ;;<LEM-ENCODINGS>
      (:module
       "encodings"
       :depends-on ("base")
       :components
       ((:FILE "table")
	(:FILE "8bit")
	(:FILE "gb2312")
	(:FILE "euc-jp")
	(:FILE "cp932")
	(:FILE "iso-8859-1")
	(:FILE "utf-8")
	(:FILE "utf-16")))
      ;;</LEM-ENCODINGS>
      ;;<LEM-BASE>
      (:module
       "base"
       :serial t
       :components
       ((:file "package")
	(:file "fileutil")
	(:file "util")
	(:file "errors")
	(:file "var")
	(:file "wide")
	(:file "macros")
	(:file "hooks")
	(:file "line")
	(:file "edit")
	(:file "buffer")
	(:file "buffer-insert")
	(:file "buffers")
	(:file "point")
	(:file "basic")
	(:file "search")
	(:file "syntax")
	(:file "syntax-parser")
	(:file "tmlanguage")
	(:file "encodings")
	(:file "file")
	(:file "indent")))
      ;;</LEM-BASE>
      ;;<LEM-CORE>
      (:module
       "core"
       :serial t
       :depends-on ("base" "lisp-syntax" "encodings")
       :components
       ((:file "history")
	(:file "package")
	(:file "errors")
	(:file "key")
	(:file "macros")
	(:file "color")
	(:file "attribute")
	(:file "kill")
	(:file "file-ext")
	(:file "window")
	(:file "modeline")
	(:file "defcommand")
	(:file "mode")
	(:file "keymap")
	(:file "timer")
	(:file "event-queue")
	(:file "interp")
	(:file "input")
	(:file "overlay")
	(:file "streams")
	(:file "fundamental-mode")
	(:file "comp")
	(:file "minibuffer")
	(:file "typeout")
	(:file "lem")

	(:file "command")
	(:file "file-command")
	(:file "window-command")
	(:file "help-command")
	(:file "word-command")
	(:file "sexp-command")

	(:file "init")
	(:file "interface")
	(:file "popup-window")

	(:file "completion-mode")
	(:file "tmlanguage")
	(:file "button")
	(:file "listener-mode")
	(:file "universal-argument")
	(:file "kbdmacro")
	(:file "isearch")
	(:file "showparen")
	(:file "menu-mode")
	(:file "list-buffers")
	(:file "line-numbers")
	(:file "sourcelist")
	(:file "grep")
	(:file "go-back")
	(:file "language-mode")
	(:file "language-mode-tools")
	(:file "gtags")
	(:file "directory-mode")
	(:file "abbrev")
	(:file "rectangle")
	(:file "auto-save")

	(:file "color-theme")
	(:file "site-init")))
      ;;</LEM-CORE>
      ))
   (:module
    "modes"
    :components
    (
     ;;<LEM-LISP-MODE>
     (:module
      "lisp-mode"
      :serial t
      :components
      ((:file "util")
       (:file "errors")
       (:file "swank-protocol")
       (:file "package")
       (:file "lisp-ui-mode")
       (:file "grammer")
       (:file "lisp-mode")
       (:file "repl")
       (:file "sldb")
       (:file "inspector")
       (:file "apropos-mode")
       (:file "paren-coloring")
       (:file "misc-commands")))
     ;;</LEM-LISP-MODE>
     ;;<LEM-PAREDIT-MODE>
     (:module
      "paredit-mode"
      :depends-on ("vi-mode")
      :serial t
      :components
      ((:file "paredit-mode")))
     ;;</LEM-PAREDIT-MODE>
     ;;<LEM-VI-MODE>
     (:module
      "vi-mode"
      :serial t
      :components
      ((:file "core")
       (:file "word")
       (:file "visual")
       (:file "jump-motions")
       (:file "commands")
       (:file "ex-core")
       (:file "ex-parser")
       (:file "ex-command")
       (:file "ex")
       (:file "binds")
       (:file "vi-mode")))
     ;;</LEM-VI-MODE>
     ))))
