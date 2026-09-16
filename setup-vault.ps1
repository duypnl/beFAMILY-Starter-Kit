# Script khởi tạo nhanh cấu trúc beFAMILY OS Starter Kit
$vaultRoot = $PSScriptRoot

Write-Host ">>> Kiểm tra và khởi tạo các thư mục beFAMILY OS..." -ForegroundColor Cyan
$folders = @(
    "00 - Dashboard", "01 - Daily Log", "02 - Weekly Log", "03 - Monthly Log", "04 - Future Log",
    "20 LIFE", "30 WORK", "40 KNOWLEDGE", "50 OUTPUTS",
    "sources", "wiki", "memory", "agents", "90 SYSTEM\Templates", "90 SYSTEM\Standards", "_attachments"
)

foreach ($f in $folders) {
    $p = Join-Path $vaultRoot $f
    if (-not (Test-Path -LiteralPath $p)) {
        New-Item -ItemType Directory -Path $p -Force | Out-Null
        Write-Host "Đã tạo: $p" -ForegroundColor Green
    }
}

Write-Host ">>> Cấu trúc beFAMILY OS Starter Kit đã sẵn sàng hoạt động!" -ForegroundColor Green
