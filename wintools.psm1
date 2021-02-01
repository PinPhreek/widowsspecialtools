function Set-LastWriteTimes {
    param (
        [string] $folder = "."
    )
    $items = Get-ChildItem -Path $folder -Recurse -Force

    foreach ($item in $items) {
        $item.LastWriteTime = Get-Date
    }
}
function FunctionName {
    param (
        [string]
        [Parameter(Mandatory=$true)]$file
    )
    $(Get-ChildItem -Path $file -Force).LastWriteTime = Get-Date
}