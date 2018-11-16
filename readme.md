# Latex Template for thesis or research project

This template is intended to be used as sleek and clean Latex Template to base your thesis or research project on.

## How to fork

Before forking the template, it is recommended to fork the shared-latex repository from [here](https://gitlab.com/sbaeurle/shared-latex.git).
Adjust the shared repository as described there and head back here afterwards.

Once finished, fork this repository and change the url of the shared-latex module to your personal fork.

Clone the repository using `git clone --recurse-submodules` ensuring the submodules are cloned to.

## Getting started

General personal and shared data is provided by your personal shared-latex submodule.
Repository specific changes (such as new package imports) can be made without affecting other repositories.
Head over to [Git Submodule Documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules) to find out more about submodules and how to use them.

`config.tex` contains several variables defining general stuff about your project (e.g. title, supervisor or date).
Replace the placeholders and fill in your concrete data.

Ensure your latex distribution and all needed packages are installed correctly by performing on of the described build procedures.

If the pdf is generated correctly you can start writing you project using the files in `content/`.

## How to build

There are VS Code tasks defined per build procedure.

### Using latexmk

build: `latexmk` or `latexmk -pdf`

clean-up:

* `latexmk -c` - remove all generated files except .pdf
* `latexmk -C` - completly clean up repository

### Without latexmk

The project can build using the `make.sh` script provided in the repo:

* `./make.sh` - generates document.pdf
* `./make.sh name` - generates name.pdf
* `./make.sh name version` - generates name-version.pdf

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