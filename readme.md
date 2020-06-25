# Latex Template for thesis or research project

This template is intended to be used as sleek and clean Latex Template to base your thesis or research project on.

## Getting started

1. Fork repository into your own namespace. (GitLab preferred to support CI capabilities)
2. Replace placeholders in `config/person.tex` and `config/general.tex` with concrete values.
3. Replace logos in `images/` with the logo of your company and university.

**Important**: Ensure your latex distribution and all needed packages are installed correctly by performing on of the described build procedures (alternatively use VS Code Remote Development).

If the pdf is generated correctly you can start writing chapters as seen in `sections/01-introduction.tex`.

## How to build

These are the possibilites to build the Project.

### Using Latex-Workshop

Latex-Workshop uses `latexmk` to build the whole Project, whenever a file is saved.

To ease the installation of LaTeX, the repository comes with a provided `.devcontainer` configuration for VS Code Remote.

### Using VS Code Tasks

There are two VS Code Tasks defined to build the project:

* `Build (latexmk)` - build using latexmk
* `Build (script)` - build using `scripts/make.sh`

### Using latexmk

build: `latexmk` or `latexmk -pdf`

clean-up:

* `latexmk -c` - remove all generated files except .pdf
* `latexmk -C` - completly clean up repository

### Using build script

The project can build using the `make.sh` script provided in the repo:

* `./scripts/make.sh` - generates document.pdf
* `./scripts/make.sh name` - generates document.pdf and renames it to name.pdf
* `./scripts/make.sh name version` - generates document.pdf and renames it to name-version.pdf

## General Structure

* `.devcontainer/` - configuration for vs code remote development
* `.vscode/` - configuration for vs code
* `config/` - configuration of the project
* `sections/` - sections of the thesis/project
* `images/` - images of the project
* `shared/` - common latex files
* `scripts/` - build and helper scripts
* `.latexmkrc` - latexmk build definition
* `.gitlab-ci.yaml` - gitlab pipeline definition
* `document.tex` - main file including all other tex files
* `literature.bib` - bibliography

## Helper scripts

### svg2pdf

This script automatically converts vector images in `svg` format to `pdf` format.
It requires `inkscape` to be installed in order to function.

Usage: `./scripts/svg2pdf.sh images` - scans images folder for svg files and converts them to similary named pdf files.
