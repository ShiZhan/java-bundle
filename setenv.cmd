@echo off
set BUNDLE_DIR=%~dp0
set JAVA_HOME=%BUNDLE_DIR%jdk
set SCALA_HOME=%BUNDLE_DIR%scala-2.11.7
set SBT_HOME=%BUNDLE_DIR%sbt
set PATH=%JAVA_HOME%\bin;%SCALA_HOME%\bin;%SBT_HOME%\bin;%PATH%
