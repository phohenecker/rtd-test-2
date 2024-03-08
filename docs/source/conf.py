# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                             #
#   Copyright (c) 2024 Avantia Law Limited (Avantia). All Rights Reserved.    #
#                                                                             #
#   IT IS STRICTLY PROHIBITED TO USE, COPY, MODIFY, OR DISTRIBUTE THIS        #
#   SOFTWARE IN SOURCE OR BINARY FORMS FOR ANY PURPOSE.                       #
#                                                                             #
#   IN NO EVENT SHALL AVANTIA BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,    #
#   SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS,    #
#   ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF    #
#   AVANTIA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.               #
#                                                                             #
#   AVANTIA SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT         #
#   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR     #
#   A PARTICULAR PURPOSE. AVANTIA HAS NO OBLIGATION TO PROVIDE MAINTENANCE,   #
#   SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.                         #
#                                                                             #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


import datetime
import pathlib
import sys


# -- Path setup --------------------------------------------------------------------------------------------------------

sys.path.insert(0, str(pathlib.Path("../..").absolute()))
sys.path.insert(0, str(pathlib.Path("../../src/main").absolute()))


# -- Project information -----------------------------------------------------------------------------------------------

project = "myrtdtestpkg"
copyright = f"{datetime.date.today().year}, Avantia Law Limited"
author = "Avantia AI"
version = "0.0.0"
release = "0.0.0"


# -- General configuration ---------------------------------------------------------------------------------------------

extensions = [
        "sphinx.ext.autodoc",
        "sphinx.ext.autosummary",
        "sphinx.ext.intersphinx",
        "sphinx.ext.napoleon",
        "sphinx.ext.viewcode",
        "sphinx_rtd_theme"
]
templates_path = ["_templates"]
exclude_patterns = []
autosummary_generate = True
primary_domain = "py"
highlight_language = "py"
intersphinx_mapping = {
        "python": ("https://docs.python.org/3", None)
}


# -- Options for HTML output -------------------------------------------------------------------------------------------

html_theme = "sphinx_rtd_theme"
html_static_path = ["_static"]
html_title = "myrtdtestpkg"
html_logo = "_static/avantia-logo.png"
html_theme_options = {
        "logo_only": False,
        "display_version": True
}
