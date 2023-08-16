$count = 0
do {
    $success = $False
    $count = $count + 1
    Write-Host -Object "正在尝试推送：第$($count)次" -ForegroundColor Green
    git push --progress "origin" master:master
    $success = $?
} while (
    !$success
)