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


# You can set these variables from the command line, and also
# from the environment for the first two.
SPHINXOPTS    ?=
SPHINXBUILD   ?= sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
