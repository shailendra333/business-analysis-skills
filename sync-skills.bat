@echo off
setlocal enabledelayedexpansion

set "SCRIPT_DIR=%~dp0"
set "MODE=%~1"
if "%MODE%"=="" set "MODE=check"
if not "%MODE%"=="check" if not "%MODE%"=="fix" (
  echo Usage: %~nx0 [check^|fix]
  echo   check  - report any drift between canonical skill files and their mirrors ^(default^)
  echo   fix    - copy canonical files over any drifted mirror
  exit /b 2
)

set SKILLS=pestle-analysis swot-prioritisation porters-five-forces value-proposition-analysis stakeholder-register power-interest-grid raci-matrix interview-design questionnaire-design workshop-design observation-study-plan prototype-elicitation use-case-specification process-model-spec moscow-prioritisation see-i-clarifier catwoe-root-definition acceptance-criteria-writer ambiguity-hunter assumption-extractor constraint-detector definition-of-done-drafter edge-case-elicitor functional-vs-nonfunctional-splitter problem-statement-refiner proto-requirements-normalizer requirements-conflict-checker requirements-gap-auditor requirements-interrogator requirements-prioritizer requirements-traceability-starter raci-rasci-builder stakeholder-communication-planner probe-question-generator pyramid-funnel-diamond-interviewer questionnaire-pilot-checker breakout-structure-designer as-is-process-investigator to-be-process-designer business-rule-extractor benefit-hypothesis-writer business-problem-framing strategy-analysis stakeholder-analysis requirements-elicitation process-modelling-and-improvement ssm-analysis requirements-packager critical-thinking-bias-check assumptions-constraints-log evidence-gap-review deliverable-consistency-check requirements-quality-check

set DRIFT=0
set TOTAL=0

for %%S in (%SKILLS%) do (
  set /a TOTAL+=1
  set "CANONICAL="
  if exist "%SCRIPT_DIR%atomic\%%S\SKILL.md" set "CANONICAL=%SCRIPT_DIR%atomic\%%S\SKILL.md"
  if exist "%SCRIPT_DIR%workflows\%%S\SKILL.md" set "CANONICAL=%SCRIPT_DIR%workflows\%%S\SKILL.md"
  if exist "%SCRIPT_DIR%quality\%%S\SKILL.md" set "CANONICAL=%SCRIPT_DIR%quality\%%S\SKILL.md"
  if "!CANONICAL!"=="" set "CANONICAL=%SCRIPT_DIR%.claude\skills\%%S\SKILL.md"

  if not exist "!CANONICAL!" (
    echo MISSING canonical: !CANONICAL! 1>&2
    set DRIFT=1
  ) else (
    call :sync_one "%%S" "!CANONICAL!" "%SCRIPT_DIR%.claude\skills\%%S\SKILL.md"
    call :sync_one "%%S" "!CANONICAL!" "%SCRIPT_DIR%.agents\skills\%%S\SKILL.md"
  )
)

if "%MODE%"=="check" (
  if "%DRIFT%"=="0" echo OK: all %TOTAL% skills in sync.
  exit /b %DRIFT%
)

echo Synced %TOTAL% skills.
exit /b 0

:sync_one
set "NAME=%~1"
set "CANONICAL=%~2"
set "MIRROR=%~3"
if /I "%CANONICAL%"=="%MIRROR%" exit /b 0
if not exist "%MIRROR%" (
  if "%MODE%"=="fix" (
    for %%D in ("%MIRROR%") do if not exist "%%~dpD" mkdir "%%~dpD"
    copy /Y "%CANONICAL%" "%MIRROR%" >nul
    echo FIXED  %NAME% -^> %MIRROR%
  ) else (
    echo DRIFT  %NAME%: %MIRROR% does not exist
    set DRIFT=1
  )
  exit /b 0
)
fc /B "%CANONICAL%" "%MIRROR%" >nul 2>&1
if errorlevel 1 (
  if "%MODE%"=="fix" (
    copy /Y "%CANONICAL%" "%MIRROR%" >nul
    echo FIXED  %NAME% -^> %MIRROR%
  ) else (
    echo DRIFT  %NAME%: %CANONICAL% != %MIRROR%
    set DRIFT=1
  )
)
exit /b 0
