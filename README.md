# pygments-css

**If you're looking for the Pygments CSS styles, they're under the `styles` directory.**

## Context

[Pygments](https://pygments.org/) is a generic syntax highlighter.
I use it for syntax highlighting code blocks on my (eventual) [fastpages](https://github.com/fastai/fastpages) blog.
The Pygments is actively maintained, which is great!
It continues to add different styles and support for different languages.

Unfortunately, one of the [repos](https://github.com/richleland/pygments-css) that maintained easily-usable CSS files for these styles is quite stale.
So, I decided to spend the 15 minutes to get a new set of CSS files generated.
Ta-da!

In truth, the only real differences are based around their repo's staleness: it hasn't been updated in 4 years, and Pygments has more themes now. 

## Development

This is a dead-simple project. 
If you'd like to extend it, all you need locally are `poetry` and `make` to get the development environment setup via `make build`. 
Then you run `make css` to re-build the local `styles` folder. 
Done!

## Notes

Nobody asked for it, but here's an unofficial ranking in descending order, with entries within a tier not necessarily in any particular order:

- 🥇 **The best**: `default`, `friendly`, `colorful`
- 👍 **Solid picks**: `murphy`, `manni`, `pastie`, `tango`, `xcode`, `paraiso-dark`, `arduino`
- 🤔 **Hmm...**: `autumn`, `emacs`, `perldoc`, `native`, `vim`, `vs`, `igor`, `paraiso-light`,  `lovelace`, `rainbow_dash`, `inkpot`
- 😶 **Oh no...**: `borland`, `trac`, `fruity`, `bw`, `abap`, `solarized-dark`, `solarized-light`, `sas`, `stata`, `stata-light`
- 🤖 **Monokai**: `monokai` (Sorry, I just don't like Monokai)
- 💩 **Why does this exist**: `rrt`, `algol`, `algol_nu`, `stata-dark`

## TODO

The official Pygments website demo is...a bit painful to use.
Maybe we can set up a streamlit app that can do this demo a bit more sensibly?
