# Latex Template for thesis or research project

This template is intended to be used as sleek and clean Latex Template to base your thesis or research project on.

## Getting started

First, fork the repository into your own namespace.
Head over to `config/` and replace the placeholders in `person.tex` and `general.tex` with your concrete data.

Ensure your latex distribution and all needed packages are installed correctly by performing on of the described build procedures (or use the Docker Integration of Latex-Workshop).

If the pdf is generated correctly you can start writing you project using the files in `content/`.

## How to build

These are the possibilites to build the Project.

### Using Latex-Workshop

Latex-Workshop uses `latexmk` to build the whole Project, whenever a file is saved.

To overcome the need of a local Latex Installation, it is possible to use a Docker Container as Latex Environment.
The Integration into Latex-Workshop can be enabled by:
`"latex-workshop.docker.enabled": true`

If you are using this approach, make sure to pre-pull `tianon/latex` from the Docker registry.

### Using VS Code

There are two VS Code Tasks defined to build the project:

* `Build (latexmk)` - build using latexmk
* `Build (script)` - build using `make.sh`

### Using latexmk

build: `latexmk` or `latexmk -pdf`

clean-up:

* `latexmk -c` - remove all generated files except .pdf
* `latexmk -C` - completly clean up repository

### Without latexmk

The project can build using the `make.sh` script provided in the repo:

* `./scripts/make.sh` - generates document.pdf
* `./scripts/make.sh name` - generates document.pdf and renames it to name.pdf
* `./scripts/make.sh name version` - generates document.pdf and renames it to name-version.pdf

## General Structure

* `.vscode` - configuration for vs code
* `config/` - configuration of the project
* `content/` - content of the project
* `images/` - images of the project
* `shared/` - common latex files
* `scripts/` - build and helper scripts
* `.latexmkrc` - latexmk build definition
* `.gitlab-ci.yaml` - pipeline definition
* `document.tex` - main file including all other tex files
* `literature.bib` - bibliography
