# minilem is the minimal Common Lisp editor for Common Lisp
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

## How to develop lisp
See https://github.com/cxxxr/lem/wiki/Lisp-Mode

## How to hack on lem itself
see https://github.com/cxxxr/lem/wiki/How-to-hack-on-lem-itself

## Contributors

This project exists thanks to all the people who contribute. [[Contribute]](CONTRIBUTING.md).
<a href="graphs/contributors"><img src="https://opencollective.com/lem/contributors.svg?width=890" /></a>

## Backers

Thank you to all our backers! 🙏 [[Become a backer](https://opencollective.com/lem#backer)]

<a href="https://opencollective.com/lem#backers" target="_blank"><img src="https://opencollective.com/lem/backers.svg?width=890"></a>


## Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website. [[Become a sponsor](https://opencollective.com/lem#sponsor)]

<a href="https://opencollective.com/lem/sponsor/0/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/0/avatar.svg"></a>
<a href="https://opencollective.com/lem/sponsor/1/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/1/avatar.svg"></a>
<a href="https://opencollective.com/lem/sponsor/2/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/2/avatar.svg"></a>
<a href="https://opencollective.com/lem/sponsor/3/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/3/avatar.svg"></a>
<a href="https://opencollective.com/lem/sponsor/4/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/4/avatar.svg"></a>
<a href="https://opencollective.com/lem/sponsor/5/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/5/avatar.svg"></a>
<a href="https://opencollective.com/lem/sponsor/6/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/6/avatar.svg"></a>
<a href="https://opencollective.com/lem/sponsor/7/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/7/avatar.svg"></a>
<a href="https://opencollective.com/lem/sponsor/8/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/8/avatar.svg"></a>
<a href="https://opencollective.com/lem/sponsor/9/website" target="_blank"><img src="https://opencollective.com/lem/sponsor/9/avatar.svg"></a>



# License
[MIT](https://github.com/cxxxr/lem/blob/master/LICENCE)
