param(
    [Parameter(Mandatory=$true)]
    [string]$Name
)

$Root    = "C:\Users\aa77m\Downloads\PROJECTS"
$Project = Join-Path $Root $Name

if (!(Test-Path $Project)) {
    throw "Project does not exist: $Project"
}

$Prompt = @"
This project is complete.

Project:
$Project

Shared AI-MIND:
C:\Users\aa77m\Downloads\PROJECTS\AI-MIND

Perform the final project-to-AI-MIND handoff.

First read:
C:\Users\aa77m\Downloads\PROJECTS\AI-MIND\CODEX.md
C:\Users\aa77m\Downloads\PROJECTS\AI-MIND\wiki\index.md

Inspect this project and update:

AI-MIND\wiki\projects\$Name.md

Capture:
- purpose
- status
- important features
- tech stack
- architecture
- database/auth/API approach
- important decisions and reasons
- deployment knowledge
- important problems and solutions
- lessons learned
- limitations
- reusable knowledge

Move reusable general lessons into appropriate:
- wiki\concepts\
- wiki\entities\

Then update:
- wiki\index.md
- wiki\log.md

Do not:
- copy the whole project
- copy large source files
- store secrets
- store .env values
- modify application code unless explicitly requested

Avoid duplicated knowledge.
Use Obsidian [[links]].
"@

Set-Clipboard $Prompt

Write-Host ""
Write-Host "Finish-project prompt copied to clipboard." -ForegroundColor Green
Write-Host "Codex will open. Press Ctrl+V and Enter." -ForegroundColor Cyan
Write-Host ""

Set-Location $Project
codex
