param(
    [ValidateSet("before", "after")]
    [string]$Stage = "before",
    [string]$Profile = "jmeter-local.properties",
    [string]$Jmx = ""
)

$ErrorActionPreference = "Stop"

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

if ([string]::IsNullOrWhiteSpace($Jmx)) {
    $jmxFile = if ($Stage -eq "before") {
        "foundations-stress-test-before-no-cache.jmx"
    } else {
        "foundations-stress-test-after-cache.jmx"
    }
} else {
    $jmxFile = $Jmx
}

if ([System.IO.Path]::IsPathRooted($jmxFile)) {
    $jmxPath = $jmxFile
} else {
    $jmxPath = Join-Path $scriptDir $jmxFile
}

if ([System.IO.Path]::IsPathRooted($Profile)) {
    $profilePath = $Profile
} else {
    $profilePath = Join-Path $scriptDir $Profile
}

if (-not (Test-Path $jmxPath)) {
    throw "JMX file not found: $jmxPath"
}

if (-not (Test-Path $profilePath)) {
    throw "Profile file not found: $profilePath"
}

$resultDir = Join-Path $scriptDir $Stage
$jtlPath = Join-Path $resultDir "result.jtl"
$reportDir = Join-Path $resultDir "report"

New-Item -ItemType Directory -Path $resultDir -Force | Out-Null

if (Test-Path $jtlPath) {
    Remove-Item -Path $jtlPath -Force
}

if (Test-Path $reportDir) {
    Remove-Item -Path $reportDir -Recurse -Force
}

$jmeterCmd = Get-Command jmeter -ErrorAction SilentlyContinue
if (-not $jmeterCmd) {
    throw "Cannot find 'jmeter' command in PATH. Install JMeter and ensure 'jmeter' is available."
}

Write-Host "Running stage: $Stage"
Write-Host "Using JMX: $jmxPath"
Write-Host "Using profile: $profilePath"
Write-Host "Output JTL: $jtlPath"
Write-Host "Output report: $reportDir"

& jmeter `
    -n `
    -t $jmxPath `
    -q $profilePath `
    -l $jtlPath `
    -e `
    -o $reportDir `
    -Jsummariser.name=summary `
    -Jsummariser.interval=15

if ($LASTEXITCODE -ne 0) {
    throw "JMeter run failed with exit code $LASTEXITCODE"
}

Write-Host "JMeter run completed: $Stage"
