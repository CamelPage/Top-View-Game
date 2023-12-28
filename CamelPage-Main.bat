@echo on
chcp 65001>NUL

set /a max_a=10
set /a max_b=10


set /a max_aa=%max_a%
set /a max_bb=%max_b%
set /a max_a+=1
set /a max_b+=1
set /a x=1
set /a a=2
set /a b=2
:Simloop
set list_1[%x%]=#
set list_2[%x%]=#
set list_3[%x%]=#
set list_4[%x%]=#
set list_5[%x%]=#
set list_6[%x%]=#
set list_7[%x%]=#
set list_8[%x%]=#
set list_9[%x%]=#
set list_10[%x%]=#

set /a x+=1
:: liczba  (\/+1) * liczba list = liczba pol
if %x%==11 (echo arrays created) else (goto Simloop)
set list_3[3]=⨉
set p=p
set /a a_wall=-1
set /a b_wall=-1
:sim

cls

set /a x=1

:Simloop2
set list_1[%x%]=#
set list_2[%x%]=#
set list_3[%x%]=#
set list_4[%x%]=#
set list_5[%x%]=#
set list_6[%x%]=#
set list_7[%x%]=#
set list_8[%x%]=#
set list_9[%x%]=#
set list_10[%x%]=#

set /a x+=1
:: liczba  (\/+1) * liczba list = liczba pol
if %x%==11 (echo arrays created) else (goto Simloop2)

Rem Tutaj Wstawiaj Funkcje
Rem :wall x y |

call :wall %a_wall% %b_wall%
call :wall 4 4
call :wall 4 3
call :wall 4 2
call :wall 4 1
call :wall 5 5
call :wall 5 6
call :wall 6 7
call :wall 7 6
call :wall 7 5
set list_%b%[%a%]=%p%


set char=
:: a left - b up
set digit=1
set char=⨉
echo %pp_a% %pp_b%
echo   1 2 3 4 5
echo A %list_1[1]% %list_1[2]% %list_1[3]% %list_1[4]% %list_1[5]% %list_1[6]% %list_1[7]% %list_1[8]% %list_1[9]% %list_1[10]%
echo B %list_2[1]% %list_2[2]% %list_2[3]% %list_2[4]% %list_2[5]% %list_2[6]% %list_2[7]% %list_2[8]% %list_2[9]% %list_2[10]%
echo C %list_3[1]% %list_3[2]% %list_3[3]% %list_3[4]% %list_3[5]% %list_3[6]% %list_3[7]% %list_3[8]% %list_3[9]% %list_3[10]%
echo D %list_4[1]% %list_4[2]% %list_4[3]% %list_4[4]% %list_4[5]% %list_4[6]% %list_4[7]% %list_4[8]% %list_4[9]% %list_4[10]%
echo E %list_5[1]% %list_5[2]% %list_5[3]% %list_5[4]% %list_5[5]% %list_5[6]% %list_5[7]% %list_5[8]% %list_5[9]% %list_5[10]%
echo F %list_6[1]% %list_6[2]% %list_6[3]% %list_6[4]% %list_6[5]% %list_6[6]% %list_6[7]% %list_6[8]% %list_6[9]% %list_6[10]%
echo G %list_7[1]% %list_7[2]% %list_7[3]% %list_7[4]% %list_7[5]% %list_7[6]% %list_7[7]% %list_7[8]% %list_7[9]% %list_7[10]%
echo H %list_8[1]% %list_8[2]% %list_8[3]% %list_8[4]% %list_8[5]% %list_8[6]% %list_8[7]% %list_8[8]% %list_8[9]% %list_8[10]%
echo I %list_9[1]% %list_9[2]% %list_9[3]% %list_9[4]% %list_9[5]% %list_9[6]% %list_9[7]% %list_9[8]% %list_9[9]% %list_9[10]%
echo J %list_10[1]% %list_10[2]% %list_10[3]% %list_10[4]% %list_10[5]% %list_10[6]% %list_10[7]% %list_10[8]% %list_10[9]% %list_10[10]%


set /p char=: 

set /a pp_a=%a%
set /a pp_b=%b%

if %char%==e ( set /p b_wall=Enter X: & set /p a_wall=Enter Y: )

if %char%==a (set /a a-=1 & set p=←)
if %char%==d (set /a a+=1 & set p=→)
if %char%==w (set /a b-=1 & set p=↑)
if %char%==s (set /a b+=1 & set p=↓)
if %a%==0 (set /a a=1)
if %a%==%max_a% (set /a a=%max_aa%)
if %b%==0 (set /a b=1)
if %b%==%max_b% (set /a b=%max_bb%)

goto sim


:wall
set list_%1[%2]=W
if %a%==%2 if %b%==%1 (set /a a=%pp_a% & set /a b=%pp_b%)
