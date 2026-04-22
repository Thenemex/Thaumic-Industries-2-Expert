@echo OFF

REM     Git -> Instance (Config + Local + Scripts)
@robocopy "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\config" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries 2 - Expert\config" /MIR
@robocopy "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\local" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries 2 - Expert\local" /MIR
@robocopy "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\scripts" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries 2 - Expert\scripts" /MIR
REM     Git -> Java 25 Edition (Config + Local + Scripts)
@robocopy "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\config" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\config" /MIR
@robocopy "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\local" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\local" /MIR
@robocopy "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\scripts" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\scripts" /MIR

REM     Instance : Delete unused icon
@del /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries 2 - Expert\config\itlt\icon2.png"

REM     Instance -> Java 25 Edition (Mods)
@robocopy "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries 2 - Expert\mods" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods" /MIR

REM     Java 25 Edition : Delete Mods
@rmdir /S /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\1.7.10"
@del /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\CodeChickenCore-1.7.10-1.0.7.48-universal.jar"
@del /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\[1.7.10] Client Dynamic Light-2.0.jar"
@del /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\BetterFps-1.0.1.jar"
@del /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\FoamFix-1.7.10-universal-1.0.4.jar"
@del /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\FullscreenWindowed-1.7.10-1.3.0b.jar"
@del /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\NotEnoughIDs-1.4.3.4.jar"
@del /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\TickDynamic-1.7.10-0.1.5.jar"

REM     Java 25 Edition : Add GTNH Mods
@robocopy "C:\Jeux\CurseForge\Minecraft\Instances\DOWNLOAD\mods" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods"

REM     Java 25 Edition : Write additional info for Custom Main Menu
@robocopy "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\config\CustomMainMenu" "D:\Thaumic-Industries\temp" /MIR
@PowerShell "(GC D:\Thaumic-Industries\temp\mainmenu.json)|%%{$_ -Replace '\", \"posX\" : 2','-1 - Java 25 Edition\", \"posX\" : 2'}|SC D:\Thaumic-Industries\temp\mainmenu.json"
@robocopy "D:\Thaumic-Industries\temp" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\config\CustomMainMenu" /MIR /MOV

REM     Java 25 Edition : Edit window main title for ITLT
@xcopy /Y "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\config\itlt.cfg" "D:\Thaumic-Industries\temp"
@PowerShell "(GC D:\Thaumic-Industries\temp\itlt.cfg)|%%{$_ -Replace 'Thaumic Industries','Thaumic Industries - Java 25 Edition'}|SC D:\Thaumic-Industries\temp\itlt.cfg"
@robocopy "D:\Thaumic-Industries\temp" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\config" /MOV

REM     Java 25 Edition : Rename & delete unused icon
@del /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\config\itlt\icon.png"
@robocopy "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\config\itlt" "D:\Thaumic-Industries\temp" /MIR /MOV
@ren "D:\Thaumic-Industries\temp\icon2.png" "icon.png"
@robocopy "D:\Thaumic-Industries\temp" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\config\itlt" /MIR /MOV