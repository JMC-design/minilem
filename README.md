# minilem
Minilem is a bare-bones emacs-like lisp editor written in Common Lisp. It is a fork of [lem](https://github.com/cxxxr/lem) with an emphasis on minimalism, ease of install, and being a lisp editor.

Everything has been removed except:
- The base editor
- Paredit mode, lisp mode, and vi mode.

Differences:
- The encoding tables have been moved to their own `res/` folder, and the corresponding encodings files use `shim.lisp` in order to reference the new location of the encoding tables.
- git-version has been disabled.

Then all of these systems are bundled into `minilem.asd`

# Usage
You have to load a frontend or implement your own by subclassing `lem:implementation`. 
See [The lem frontends](https://github.com/cxxxr/lem/tree/master/frontends) or [lem-opengl](https://github.com/gmasching/lem-opengl) for an example as how to write your own frontend.
