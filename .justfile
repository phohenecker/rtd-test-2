# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                                                                             #
#   Copyright 2024 Patrick Hohenecker                                         #
#                                                                             #
#   Redistribution and use in source and binary forms, with or without        #
#   modification, are permitted provided that the following conditions        #
#   are met:                                                                  #
#                                                                             #
#   1. Redistributions of source code must retain the above copyright         #
#      notice, this list of conditions and the following disclaimer.          #
#                                                                             #
#   2. Redistributions in binary form must reproduce the above copyright      #
#      notice, this list of conditions and the following disclaimer in the    #
#      documentation and/or other materials provided with the distribution.   #
#                                                                             #
#   3. Neither the name of the copyright holder nor the names of its          #
#      contributors may be used to endorse or promote products derived        #
#      from this software without specific prior written permission.          #
#                                                                             #
#   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS       #
#   “AS IS” AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT         #
#   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR     #
#   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT      #
#   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    #
#   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT          #
#   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,     #
#   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY     #
#   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT       #
#   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE     #
#   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.      #
#                                                                             #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


set shell := ["sh", "-uc"]
set dotenv-load


src_dir := "src/main"
test_dir := "src/test"
docs_dir := "docs"

gcp_python_registry_url := "https://.."


# We add the src directory to the PYTHONPATH:
export PYTHONPATH := `pwd` / src_dir + ":" + env_var_or_default("PYTHONPATH", "")


# Builds the documentation.
build-docs:
    @cd {{docs_dir}} && poetry run make html


# Builds the Python library.
build-library:
    @poetry build


# Cleans up all generated files.
clean:
    @rm -rf dist
    @rm -rf htmlcov
    @rm -rf .coverage
    @rm -rf "{{docs_dir}}/build"
    @rm -rf "{{docs_dir}}/source/generated"


# Prints the current version of the Python library.
print-version:
    @poetry version -s


# Builds and publishes the Python library.
publish-library: clean build-library
    @poetry self add keyrings.google-artifactregistry-auth
    @poetry config repositories.gcp {{gcp_python_registry_url}}
    @poetry publish -r gcp


# Runs all unit tests in the test directory.
test:
	@poetry run python -m unittest discover -s "{{test_dir}}" -p "*_test.py"


# Runs all unit tests in the test directory with coverage.
test-with-coverage:
    @poetry run coverage run -m unittest discover -s "{{test_dir}}" -p "*_test.py"
    @poetry run coverage html
    @poetry run coverage report


# Updates the current version of the Python library to a snapshot version.
update-version-to-snapshot:
    @poetry version $(poetry version -s).dev$(poetry run python -c "import datetime; print(datetime.datetime.now(datetime.UTC).strftime('%Y%m%d%H%M%S'))")
