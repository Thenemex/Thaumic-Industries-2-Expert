@ECHO OFF

REM     Git -> Instance (Config + Local + Scripts)
@ROBOCOPY "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\config" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries 2 - Expert\config" /MIR
@ROBOCOPY "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\local" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries 2 - Expert\local" /MIR
@ROBOCOPY "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\scripts" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries 2 - Expert\scripts" /MIR
REM     Git -> Java 25 Edition (Config + Local + Scripts)
@ROBOCOPY "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\config" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\config" /MIR
@ROBOCOPY "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\local" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\local" /MIR
@ROBOCOPY "C:\Users\TNMX7\IdeaProjects\Thaumic-Industries-2-Expert\overrides\scripts" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\scripts" /MIR

REM     Instance -> Java 25 Edition (Mods)
@ROBOCOPY "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries 2 - Expert\mods" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods" /MIR

REM     Java 25 Edition : Delete Mods
@RMDIR /S /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\1.7.10"
@DEL /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\CodeChickenCore-1.7.10-1.0.7.48-universal.jar"
@DEL /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\[1.7.10] Client Dynamic Light-2.0.jar"
@DEL /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\BetterFps-1.0.1.jar"
@DEL /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\FoamFix-1.7.10-universal-1.0.4.jar"
@DEL /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\FullscreenWindowed-1.7.10-1.3.0b.jar"
@DEL /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\NotEnoughIDs-1.4.3.4.jar"
@DEL /Q "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods\TickDynamic-1.7.10-0.1.5.jar"

REM     Java 25 Edition : Add GTNH Mods
@ROBOCOPY "C:\Jeux\CurseForge\Minecraft\Instances\DOWNLOAD\mods" "C:\Jeux\CurseForge\Minecraft\Instances\Thaumic Industries - Java 25 Edition\mods"
