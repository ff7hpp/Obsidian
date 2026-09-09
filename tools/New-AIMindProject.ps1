param(
    [Parameter(Mandatory=$true)]
    [string]$Name
)

$Root   = "C:\Users\aa77m\Downloads\PROJECTS"
$AIMind = Join-Path $Root "AI-MIND"
$Project = Join-Path $Root $Name

if (Test-Path $Project) {
    throw "Project already exists: $Project"
}

New-Item -ItemType Directory -Force $Project | Out-Null

$Agents = @"
# Project Instructions

Project: $Name

## SHARED AI-MIND

Shared knowledge is stored at:

C:\Users\aa77m\Downloads\PROJECTS\AI-MIND

Before important architecture, database, authentication, API,
security, testing, infrastructure, or major design decisions:

1. Read AI-MIND\CODEX.md.
2. Read AI-MIND\wiki\index.md.
3. Open only relevant linked pages.
4. Reuse proven patterns when appropriate.
5. Do not blindly copy old project decisions.

Keep MVP implementations simple.
Do not refactor unrelated code.
Prefer targeted tests.
Never store secrets in AI-MIND.

When asked to update AI-MIND, extract only durable reusable knowledge.
"@

Set-Content "$Project\AGENTS.md" $Agents -Encoding utf8

$Note = Join-Path $AIMind "wiki\projects\$Name.md"

@"
# $Name

## Status

In development.

## Source

$Project

## Goal

To be defined.

## Stack

To be defined.

## Decisions

## Lessons Learned

## Reusable Knowledge
"@ | Set-Content $Note -Encoding utf8

Write-Host ""
Write-Host "Project created:" -ForegroundColor Green
Write-Host $Project
Write-Host ""
Write-Host "AI-MIND project page created:"
Write-Host $Note
Write-Host ""
Write-Host "Starting Codex..."
Write-Host ""

Set-Location $Project
codex
