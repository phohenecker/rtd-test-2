Python Library: `myrtdtestpkg` 🤩
========================================================================================================================



🧐 About
------------------------------------------------------------------------------------------------------------------------


Just a test.



🏁 Getting Started
------------------------------------------------------------------------------------------------------------------------


The repository uses [`just`](https://github.com/casey/just) (a build tool like `Makefile`) to automate common tasks such
as testing, building, etc.
To list all available recipes, run the following command in the project directory:

```bash
$ just -l
Available recipes:
    build-docs                 # Builds the documentation.
    build-library              # Builds the Python library.
    clean                      # Cleans up all generated files.
    print-version              # Prints the current version of the Python library.
    publish-library            # Builds and publishes the Python library.
    test                       # Runs all unit tests in the test directory.
    test-with-coverage         # Runs all unit tests in the test directory with coverage.
    update-version-to-snapshot # Updates the current version of the Python library to a snapshot version.
```

Furthermore, [Poetry](https://python-poetry.org/) is used to manage dependencies, which provides a virtualenv
environment that readily contains all dependencies required for development, testing, and building.

> ☝️You have to run `poetry install` (in the project root) after cloning this repository for the environment to be
> created.

To use the environment from the shell, run either `poetry run ...` to execute a single command or `poetry shell` to
permanently activate the environment. (Notice that all `just` recipes take care of this automatically.)



✍️ Authors
------------------------------------------------------------------------------------------------------------------------


* Patrick Hohenecker ([patrick@avantia.ai](mailto:patrick@avantia.ai))
