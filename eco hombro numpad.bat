@echo off
cd /d "%~dp0"
:: Obligamos a PowerShell a leer el archivo explícitamente en UTF-8 antes de ejecutarlo para evitar errores de sintaxis con los acentos
powershell.exe -ExecutionPolicy Bypass -NoProfile -Command "& ([scriptblock]::Create((Get-Content -Path '.\eh.ps1' -Raw -Encoding UTF8)))"
pause