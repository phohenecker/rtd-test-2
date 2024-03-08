:: # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
:: #                                                                             #
:: #   Copyright (c) 2024 Avantia Law Limited (Avantia). All Rights Reserved.    #
:: #                                                                             #
:: #   IT IS STRICTLY PROHIBITED TO USE, COPY, MODIFY, OR DISTRIBUTE THIS        #
:: #   SOFTWARE IN SOURCE OR BINARY FORMS FOR ANY PURPOSE.                       #
:: #                                                                             #
:: #   IN NO EVENT SHALL AVANTIA BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,    #
:: #   SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS,    #
:: #   ARISING OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF    #
:: #   AVANTIA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.               #
:: #                                                                             #
:: #   AVANTIA SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT         #
:: #   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR     #
:: #   A PARTICULAR PURPOSE. AVANTIA HAS NO OBLIGATION TO PROVIDE MAINTENANCE,   #
:: #   SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.                         #
:: #                                                                             #
:: # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #


@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=source
set BUILDDIR=build

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.https://www.sphinx-doc.org/
	exit /b 1
)

if "%1" == "" goto help

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
goto end

:help
%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:end
popd
