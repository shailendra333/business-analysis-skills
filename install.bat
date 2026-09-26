@echo off
setlocal enabledelayedexpansion

set "SCRIPT_DIR=%~dp0"

set SKILLS=pestle-analysis swot-prioritisation porters-five-forces value-proposition-analysis stakeholder-register power-interest-grid raci-matrix interview-design questionnaire-design workshop-design observation-study-plan prototype-elicitation use-case-specification process-model-spec moscow-prioritisation see-i-clarifier catwoe-root-definition acceptance-criteria-writer ambiguity-hunter assumption-extractor constraint-detector definition-of-done-drafter edge-case-elicitor functional-vs-nonfunctional-splitter problem-statement-refiner proto-requirements-normalizer requirements-conflict-checker requirements-gap-auditor requirements-interrogator requirements-prioritizer requirements-traceability-starter raci-rasci-builder stakeholder-communication-planner probe-question-generator pyramid-funnel-diamond-interviewer questionnaire-pilot-checker breakout-structure-designer as-is-process-investigator to-be-process-designer business-rule-extractor benefit-hypothesis-writer business-problem-framing strategy-analysis stakeholder-analysis requirements-elicitation process-modelling-and-improvement ssm-analysis requirements-packager critical-thinking-bias-check assumptions-constraints-log evidence-gap-review deliverable-consistency-check requirements-quality-check

set COUNT=0
for %%S in (%SKILLS%) do (
  echo Installing %%S...
  if not exist "%USERPROFILE%\.claude\skills\%%S" mkdir "%USERPROFILE%\.claude\skills\%%S"
  copy /Y "%SCRIPT_DIR%.claude\skills\%%S\SKILL.md" "%USERPROFILE%\.claude\skills\%%S\SKILL.md" >nul
  echo   .claude -^> %USERPROFILE%\.claude\skills\%%S\SKILL.md
  if not exist "%USERPROFILE%\.agents\skills\%%S" mkdir "%USERPROFILE%\.agents\skills\%%S"
  copy /Y "%SCRIPT_DIR%.agents\skills\%%S\SKILL.md" "%USERPROFILE%\.agents\skills\%%S\SKILL.md" >nul
  echo   .agents -^> %USERPROFILE%\.agents\skills\%%S\SKILL.md
  echo.
  set /a COUNT+=1
)

echo Installing shared BA templates...
if not exist "%USERPROFILE%\.claude\skills\_templates" mkdir "%USERPROFILE%\.claude\skills\_templates"
if not exist "%USERPROFILE%\.agents\skills\_templates" mkdir "%USERPROFILE%\.agents\skills\_templates"
xcopy /Y /E /I "%SCRIPT_DIR%docs\ba\templates" "%USERPROFILE%\.claude\skills\_templates" >nul
xcopy /Y /E /I "%SCRIPT_DIR%docs\ba\templates" "%USERPROFILE%\.agents\skills\_templates" >nul
echo   .claude -^> %USERPROFILE%\.claude\skills\_templates\
echo   .agents -^> %USERPROFILE%\.agents\skills\_templates\
echo.

echo Installed %COUNT% skills.
endlocal
