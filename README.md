# pygments-css

[Pygments](https://pygments.org/) is a self-described "generic syntax highlighter."
I use it for syntax highlighting code blocks on (eventual) [fastpages](https://github.com/fastai/fastpages) blog.
The Pygments is actively maintained, which is great!
It continues to add different styles and support for different languages.

Unfortunately, one of the [repos](https://github.com/richleland/pygments-css) that maintained easily-usable CSS files for these styles is quite stale.
So, I decided to spend the 15 minutes to get a new set of CSS files generated.
Ta-da!

In truth, the only real differences are based around their repo's staleness: it hasn't been updated in 4 years, and Pygments has more themes now. 

Otherwise, it's a dead-simple project. If you'd like to clone it, all you need locally are `poetry` and `make` to get the development environment setup via `make build`. 
Then you run `make css` to re-build the local `styles` folder. 
Done!