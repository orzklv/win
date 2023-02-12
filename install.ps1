# Install all required applications using winget
$Apps = @(
    "Rustlang.Rustup",
    "Volta.Volta",
    "Starship.Starship",
    "Microsoft.VisualStudioCode",
    "Microsoft.VisualStudio.2022.BuildTools"
)

ForEach ($App in $Apps) {
    winget install $App
}

# Install cargo apps
$CargoApps = @(
    "lsd",
    "just",
    "topgrade"
)

ForEach ($App in $CargoApps) {
    cargo install $App
}

# Check if the folder AppData\Roaming\lsd and config.yaml exists, if not create it and copy the config.yaml file at ./config/lsd/config.yaml:
If (!(Test-Path -Path $Env:APPDATA\lsd)) {
    New-Item -ItemType Directory -Path $Env:APPDATA\lsd
    Copy-Item -Path ./.config/lsd/config.yaml -Destination $Env:APPDATA\lsd
}

# Check if topgrade.toml exists at AppData\Roaming, if not copy the file at ./config/windows.topgrade.toml as topgrade.toml:
If (!(Test-Path -Path $Env:APPDATA\topgrade.toml)) {
    Copy-Item -Path ./.config/windows.topgrade.toml -Destination $Env:APPDATA\topgrade.toml
}

# Move ./shells/Microsoft.PowerShell_profile.ps1 to $PROFILE
Move-Item -Path ./shells/Microsoft.PowerShell_profile.ps1 -Destination $PROFILE

# Override ./terms/Windows Terminal/settings.json with the one at AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
Copy-Item -Path ./terms/Windows Terminal/settings.json -Destination $Env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -Force