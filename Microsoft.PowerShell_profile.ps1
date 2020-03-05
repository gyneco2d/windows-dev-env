$symbol = if (-not(([Security.Principal.WindowsPrincipal]`
                    [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
                    [Security.Principal.WindowsBuiltInRole] "Administrator"))
            ) {
                "> "
            } else {
                "# "
            }

function prompt() {
    if ($?) {
        Write-Host "["(Get-Location)"]"
        Write-Host "(*'-') " -NoNewline -ForegroundColor "Green"
        return $symbol
    } else {
        Write-Host "["(Get-Location)"]"
        Write-Host "(*;-;) " -NoNewline -ForegroundColor "Red"
        return $symbol
    }
}
