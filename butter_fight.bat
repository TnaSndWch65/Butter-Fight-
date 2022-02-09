@echo off
title Butter Fight!
color 06
mode con:cols=50 lines=25
goto variables

:variables
set /a butter_hp = 100
set /a player_hp = 100
set /a player_mana = 100
set /a player_stamina = 100
set /a health_potion = 25
set /a mana_potion = 25
set /a stamina_potion = 25
set /a shield = 0
goto start

:start
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Choose
echo (1)----Attacks
echo (2)------Magic
echo (3)--Inventory
choice /c 123 /n /m ">"
if %errorlevel% equ 1 goto attacks
if %errorlevel% equ 2 goto magic
if %errorlevel% equ 3 goto inventory

:butter_hprstrd2
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo The butter restored 10 HP!
set /a butter_hp += 10
pause
cls
goto magic

:attacks0
set /a hpotion = %random% %% 7
if %hpotion% equ 0 goto butter_hprstrd0
if %hpotion% equ 1 goto butter_hprstrd0
if %hpotion% equ 2 goto attacks1
if %hpotion% equ 3 goto attacks1
if %hpotion% equ 4 goto attacks1
if %hpotion% equ 5 goto attacks1
if %hpotion% equ 6 goto attacks1
if %hpotion% equ 7 goto attacks1

:butter_hprstrd0
if %butter_hp% geq 91 goto attacks
if %butter_hp% leq 90 goto butter_hprstrd0a 

:butter_hprstrd0a
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo The butter restored 10 HP!
set /a butter_hp +=10
pause
cls
goto attacks

:attacks1
set /a butter_attack = %random% %% 4
if %butter_attack% equ 0 goto butter_tackle0
if %butter_attack% equ 1 goto butter_punch0
if %butter_attack% equ 2 goto butter_slam0
if %butter_attack% equ 3 goto butter_dog0
if %butter_attack% equ 4 goto butter_lightning0


:butter_tackle0
set /a butter_tackle = %random% %% 6
if %butter_tackle% equ 0 goto butter_miss
if %butter_tackle% equ 1 goto butter_miss
if %butter_tackle% equ 2 goto butter_miss
if %butter_tackle% equ 3 goto butter_tackle
if %butter_tackle% equ 4 goto butter_tackle
if %butter_tackle% equ 5 goto butter_tackle
if %butter_tackle% equ 6 goto butter_tackle

:butter_miss
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo The butter missed!
pause
cls
goto attacks

:butter_punch0
set /a butter_punch = %random% %% 6
if %butter_punch% equ 0 goto butter_miss
if %butter_punch% equ 1 goto butter_miss
if %butter_punch% equ 2 goto butter_miss
if %butter_punch% equ 3 goto butter_punch
if %butter_punch% equ 4 goto butter_punch
if %butter_punch% equ 5 goto butter_punch
if %butter_punch% equ 6 goto butter_punch


:butter_lightning0
set /a butter_lightning = %random% %% 6
if %butter_lightning% equ 0 goto butter_miss
if %butter_lightning% equ 1 goto butter_miss
if %butter_lightning% equ 2 goto butter_miss
if %butter_lightning% equ 3 goto butter_lightning
if %butter_lightning% equ 4 goto butter_lightning
if %butter_lightning% equ 5 goto butter_lightning
if %butter_lightning% equ 6 goto butter_lightning

:butter_slam0
set /a butter_slam = %random% %% 6
if %butter_slam% equ 0 goto butter_miss
if %butter_slam% equ 1 goto butter_miss
if %butter_slam% equ 2 goto butter_miss
if %butter_slam% equ 3 goto butter_slam
if %butter_slam% equ 4 goto butter_slam
if %butter_slam% equ 5 goto butter_slam
if %butter_slam% equ 6 goto butter_slam

:butter_dog0
set /a butter_dog = %random% %% 6
if %butter_dog% equ 0 goto butter_miss
if %butter_dog% equ 1 goto butter_miss
if %butter_dog% equ 2 goto butter_miss
if %butter_dog% equ 3 goto butter_dog
if %butter_dog% equ 4 goto butter_dog
if %butter_dog% equ 5 goto butter_dog
if %butter_dog% equ 6 goto butter_dog

:butter_lghtning
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter cast lightning dealing 24 HP!
set /a player_hp -= 24
pause
cls
goto attacks

:butter_dog
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter summoned dog, which bit you dealing 20 HP!
set /a player_hp -= 20
pause
cls
goto attacks

:butter_slam
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter body slammed you dealing 20 HP!
set /a player_hp -= 20
pause
cls
goto attacks

:butter_punch
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter punched you dealing 16 HP!
set /a player_hp -= 16
pause
cls
goto attacks

:butter_tackle
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter tackled you dealing 10 HP!
set /a player_hp -= 10
pause
goto attacks

:attacks
if %player_hp% leq 0 goto player_lose
if %butter_hp% leq 0 goto butter_lose
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Choose
echo (1)---------Slash
echo (2)--------Tackle
echo (3)--Double Slice
echo (4)-------Go Back
choice /c 1234 /n /m ">"
if %errorlevel% equ 1 goto slash
if %errorlevel% equ 2 goto tackle
if %errorlevel% equ 3 goto dslice
if %errorlevel% equ 4 goto start

:dslice
if %player_stamina% lss 30 goto dslice_stamina
set /a dslice = %random% %% 4
if %dslice% equ 0 goto dslice_missed
if %dslice% equ 1 goto dslice_hit
if %dslice% equ 2 goto dslice_hit
if %dslice% equ 3 goto dslice_hit
if %dslice% equ 4 goto dslice_hit

:dslice_stamina
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You don't have enough stamina!
pause
cls
goto attacks0

:dslice_hit
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You slashed at butter dealing 40 HP!
set /a butter_hp -= 30
set /a player_stamina -= 30
pause
goto attacks0

:dslice_missed
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You missed!
pause
cls
goto attacks0

:tackle
if %player_stamina% lss 10 goto tackle_stamina
set /a tackle = %random% %% 5
if %tackle% equ 0 goto tackle_missed
if %tackle% equ 1 goto tackle_hit
if %tackle% equ 2 goto tackle_hit
if %tackle% equ 3 goto tackle_hit
if %tackle% equ 4 goto tackle_hit
if %tackle% equ 5 goto tackle_hit

:tackle_stamina
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You don't have enough stamina!
pause
cls
goto attacks0

:tackle_missed
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You missed!
pause
cls
goto attacks0

:tackle_hit
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You tackled the butter taking 10 HP
set /a butter_hp -= 10
set /a player_stamina -= 10
pause
cls
goto attacks0

:slash
if %player_stamina% lss 20 goto slash_stamina
set /a slash = %random% %% 4
if %slash% equ 0 goto slash_missed
if %slash% equ 1 goto slash_hit
if %slash% equ 2 goto slash_hit
if %slash% equ 3 goto slash_hit
if %slash% equ 4 goto slash_hit

:slash_stamina
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You dont have enough stamina!
pause
cls
goto attacks

:slash_missed
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You missed!
pause
cls
goto attacks0

:slash_hit
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You slashed the butter taking 20 HP!
set /a butter_hp -= 20
set /a player_stamina -= 20
pause
cls
goto attacks0

:magic0
set /a hpotion = %random% %% 8
if %hpotion% equ 0 goto butter_hprstrd1
if %hpotion% equ 1 goto butter_hprstrd1
if %hpotion% equ 2 goto magic1
if %hpotion% equ 3 goto magic1
if %hpotion% equ 4 goto magic1
if %hpotion% equ 5 goto magic1
if %hpotion% equ 6 goto magic1
if %hpotion% equ 7 goto magic1

:butter_hprstrd1
if %butter_hp% geq 91 goto magic
if %butter_hp% leq 90 goto butter_hprstrd2

:magic1
set /a butter_attack = %random% %% 4
if %butter_attack% equ 0 goto butter_tackle1
if %butter_attack% equ 1 goto butter_punch1
if %butter_attack% equ 2 goto butter_slam1
if %butter_attack% equ 3 goto butter_dog1
if %butter_attack% equ 4 goto butter_lightning1

:butter_lghtning1
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter cast lightning dealing 24 HP!
set /a player_hp -= 24
pause
cls
goto magic

:butter_dog1
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter summoned dog, which bit you dealing 20 HP!
set /a player_hp -= 20
pause
cls
goto magic

:butter_slam1
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter body slammed you dealing 20 HP!
set /a player_hp -= 20
pause
cls
goto magic

:butter_punch1
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter punched you dealing 16 HP!
set /a player_hp -= 16
pause
cls
goto magic

:butter_tackle1
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter tackled you dealing 10 HP!
set /a player_hp -= 10
pause
goto magic

:magic
if %player_hp% leq 0 goto player_lose
if %butter_hp% leq 0 goto butter_lose
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Choose
echo (1)---------Flame
echo (2)-----Lightning
echo (3)---------Frost
echo (4)-------Go Back
choice /c 12345 /n /m ">"
if %errorlevel% equ 1 goto flame
if %errorlevel% equ 2 goto lightning
if %errorlevel% equ 3 goto frost
if %errorlevel% equ 4 goto start

:frost
if %player_mana% leq 10 goto frost_mana
set /a frost = %random% %% 8
if %frost% equ 0 goto frost_missed
if %frost% equ 1 goto frost_missed
if %frost% equ 2 goto frost_hit
if %frost% equ 3 goto frost_hit
if %frost% equ 4 goto frost_hit
if %frost% equ 5 goto frost_hit
if %frost% equ 6 goto frost_hit
if %frost% equ 7 goto frost_failed
if %frost% equ 8 goto frost_failed

:frost_mana
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You don't have enough mana!
pause
cls
goto magic0

:frost_hit
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You cast frost dealing 10 HP!
set /a butter_hp -= 10
set /a player_mana -= 8
pause
cls
goto magic0

:frost_missed
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You missed the target!
set /a player_mana -= 8
pause
cls
goto magic0

:frost_failed
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You failed to cast frost!
pause
cls
goto magic0

:flame
if %player_mana% leq 8 goto flame_mana
set /a flame = %random% %% 8
if %flame% equ 0 goto flame_missed
if %flame% equ 1 goto flame_missed
if %flame% equ 2 goto flame_hit
if %flame% equ 3 goto flame_hit
if %flame% equ 4 goto flame_hit
if %flame% equ 5 goto flame_hit
if %flame% equ 6 goto flame_hit
if %flame% equ 7 goto flame_failed
if %flame% equ 8 goto flame_failed

:flame_mana
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You don't have enough mana!
pause
cls
goto magic0

:flame_hit
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You cast flame dealing 12 HP!
set /a butter_hp -= 12
set /a player_mana -= 10
pause
cls
goto magic0

:flame_missed
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You missed the target!
set /a player_mana -= 10
pause
cls
goto magic0

:flame_failed
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You failed to cast flame!
pause
cls
goto magic0

:lightning
if %player_mana% leq 10 goto lightning_mana
set /a lightning = %random% %% 5
if %lightning% equ 0 goto lightning_missed
if %lightning% equ 1 goto lightning_hit
if %lightning% equ 2 goto lightning_hit
if %lightning% equ 3 goto lightning_hit
if %lightning% equ 4 goto lightning_hit
if %lightning% equ 5 goto lightning_failed


:lightning_mana
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You don't have enough mana!
pause
cls
goto magic0

:lightning_hit
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You cast lightning dealing 13 HP!
set /a butter_hp -= 13
set /a player_mana -= 10
pause
cls
goto magic0

:lightning_missed
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You missed the target!
set /a player_mana -= 10
pause
cls
goto magic0

:lightning_failed
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You failed to cast lightning!
pause
cls
goto magic0

:inventory
cls
echo (1)---Health Potion: %health_potion%
echo (2)-----Mana Potion: %mana_potion%
echo (3)--Stamina Potion: %stamina_potion%
echo (4)----------Go Back
choice /c 1234 /n /m ">"
if %errorlevel% equ 1 goto health_potion
if %errorlevel% equ 2 goto mana_potion
if %errorlevel% equ 3 goto stamina_potion
if %errorlevel% equ 4 goto start

:mana_potion
if %player_mana% geq 81 goto no_mpotion
if %player_mana% leq 80 goto yes_mpotion

:no_mpotion
cls
echo You don't need this yet
pause
cls
goto inventory

:yes_mpotion
cls
echo The potion restored 20 mana!
set /a player_mana += 20
set /a mana_potion -= 1
pause
cls
goto inventory

:health_potion
if %player_hp% geq 91 goto no_hpotion
if %player_hp% leq 90 goto yes_hpotion

:no_hpotion
cls
echo You don't need this yet
pause
cls
goto inventory

:yes_hpotion
cls
echo The potion restored 10 HP!
set /a player_hp += 10
set /a health_potion -= 1
pause
cls
goto inventory

:stamina_potion
if %player_stamina% gtr 81 goto no_spotion
if %player_stamina% leq 80 goto yes_spotion

:no_spotion
cls
echo You don't need this yet
pause
cls
goto inventory

:yes_spotion
cls
echo The potion restored 20 stamina!
set /a player_stamina += 20
set /a stamina_potion -= 1
pause
cls
goto inventory

:butter_lose
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo You defeated butter!
pause
cls
start touch_the_butter2.bat

:player_lose
cls
echo Butter's HP: %butter_hp%
echo .
echo .
echo .
echo     ___________
echo    /          /]
echo   /__________/ / 
echo   [__________]/
echo .
echo .
echo .
echo Player's HP: %player_hp%
echo Player's Stamina: %player_stamina%
echo Player's Mana: %player_mana%
echo Butter defeated you!
pause
cls
goto start