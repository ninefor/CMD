@echo off & color 0e & setlocal enabledelayedexpansion 
    for /f "tokens=3* " %%a in ('netsh interface show interface^|find "ÒÑÁ¬½Ó"') do ( 
    @echo,%%b
    netsh interface ip set address name="%%b" source=dhcp
    netsh interface ip set dns name="%%b" source=dhcp 
    )
exit
