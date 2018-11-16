# Latex Template for thesis or research project

This template is intended to be used as sleek and clean Latex Template to base your thesis or research project on.

## How to fork

Before forking the template, it is recommended to fork the shared-latex repository from [here](https://gitlab.com/sbaeurle/shared-latex.git).

Afterwards fork this repository and change the url of the shared-latex module to your fork.

Clone the repository using `git clone --recurse-submodules` ensuring the submodules are cloned to.

## How to build

### Using latexmk

You can build this project using `latexmk` by executing `latexmk -pdf` or any other latexmk build command.

### Without latexmk

Otherwise the project can be build using the `make.sh` script provided in the repository.
The script accepts the following optional arguments:

* `$1 desired pdf file name`
* `$2 desired version tag`

Executing the script will result in either `document.pdf` or `$1-$2.pdf`.

## General Structure

* `content/` - content of the project
* `images/` - images of the project
* `out/` - build folder for latexmk
* `shared-latex/` - submodule containing shared latex files across multiple repositories
* `.latexmkrc` - latexmk build definition
* `config.tex` - config file for document
* `document.tex` - main file including all other tex files
* `literature.bib` - bibliography
* `make.sh` - build script