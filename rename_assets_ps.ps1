# PowerShell 重命名脚本
Set-Location -Path "D:\code\mywebsite\asset"

# 重命名映射表
$renames = @{
    "Ecco2k-E.jpg" = "logo-e.jpg"
    "drain-angel-gojuon-preview.jpg" = "gojuon-wallpaper-preview.jpg"
    "drained-pray.jpg" = "slowdamage-towa.jpg"
    "drained-yagami.jpg" = "deathnote-light-yagami-glitch.jpg"
    "light-yagami.jpg" = "deathnote-light-yagami.jpg"
    "L-hair.jpg" = "deathnote-l-hair.jpg"
    "L-misa-cafe.jpg" = "deathnote-l-misa-cafe.jpg"
    "L-iammusic.jpg" = "deathnote-l-iammusic.jpg"
    "misa-room.jpg" = "deathnote-misa-room.jpg"
    "misa-striped.jpg" = "deathnote-misa-striped.jpg"
    "misa-wings.png" = "deathnote-misa-wings.png"
    "gaara-ai.jpg" = "naruto-gaara-ai.jpg"
    "gintoki.jpg" = "gintama-gintoki.jpg"
    "parasyte.jpg" = "parasyte-izumi.jpg"
    "goth-cat.jpg" = "cat-goth.jpg"
    "kitten.jpg" = "cat-kitten.jpg"
    "twin-cats.jpg" = "cat-twin.jpg"
    "drained-kitten.jpg" = "cat-kitten-glitch.jpg"
    "glitchsittinggirl.jpg" = "glitch-girl-sitting.jpg"
    "pixelangel.jpg" = "pixel-angel.jpg"
    "punkboyglitch.jpg" = "punk-boy-glitch.jpg"
    "rockstarboy.jpg" = "rockstar-boy.jpg"
    "errorhead.jpg" = "glitch-error-head.jpg"
    "dizzygirl.jpg" = "glitch-girl-dizzy.jpg"
    "lil-peep.jpg" = "artist-lil-peep.jpg"
    "iammusic.jpg" = "opium-iammusic.jpg"
    "kanye&Ryuk.jpg" = "kanye-ryuk.jpg"
    "nakamura sawa.jpg" = "nakamura-sawa.jpg"
}

# 执行重命名
foreach ($pair in $renames.GetEnumerator()) {
    $oldName = $pair.Key
    $newName = $pair.Value
    
    if (Test-Path $oldName) {
        try {
            Rename-Item -Path $oldName -NewName $newName -ErrorAction Stop
            Write-Host "✓ $oldName -> $newName" -ForegroundColor Green
        } catch {
            Write-Host "✗ 重命名失败 ${oldName}: $_" -ForegroundColor Red
        }
    } else {
        Write-Host "⚠ 文件不存在: $oldName" -ForegroundColor Yellow
    }
}

Write-Host "`n重命名完成！" -ForegroundColor Cyan
