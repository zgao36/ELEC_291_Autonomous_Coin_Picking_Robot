@echo off
::This file was created automatically by CrossIDE to compile with C51.
pushd "%~dp0"
"C:\CrossIDE\Call51\Bin\c51.exe" --use-stdout  "%~dp0pushbutton.c"
if not exist hex2mif.exe goto done
if exist pushbutton.ihx hex2mif pushbutton.ihx
if exist pushbutton.hex hex2mif pushbutton.hex
:done
echo done
echo Crosside_Action Set_Hex_File %~dp0pushbutton.hex
popd
