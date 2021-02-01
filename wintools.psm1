function Set-LastWriteTime {
    param (
        [string] $folder = "."
    )
    $items = Get-ChildItem -Path $folder -Recurse -Force

    foreach ($item in $items) {
        $item.LastWriteTime = Get-Date
    }
}