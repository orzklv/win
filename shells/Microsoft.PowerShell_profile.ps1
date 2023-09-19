# Staring up starship custom prompt
Invoke-Expression (&starship init powershell)

# Initialize volta
(& volta completions powershell) | Out-String | Invoke-Expression

# Alias ls 
Remove-Item alias:ls -Force
Remove-Item alias:sl -Force
New-Alias -Name ls -Value eza
New-Alias -Name sl -Value eza
New-Alias -Name celar -Value clear
New-Alias -Name j -Value just.exe
New-Alias -Name open -Value explorer.exe
New-Alias -Name vim -Value hx

# Update dot configurations
Function update {
    $pwd = Get-Location
    cd $Env:APPDATA\.dots
    git pull
    cd $pwd
    Remove-Variable pwd
}

# which command equivalent for powershell
function which($name){
    $path = (Get-Command $name).Source
    if ($path) { 
        return $path
    } else { 
        throw "Command $name not found." 
    }
}

# Edit dot configurations
function edit($name){
    $DOTS = "$Env:APPDATA\.dots"
    $KEYS = "$Env:APPDATA\.keys"
    $TOOLS = "$Env:APPDATA\.tools"

    $HELP = 
@"
    Usage: edit <name>
    Where <name> is one of the following:
        dots
        keys
        tools
"@

    switch ($name) {
        "dots" {
            code $DOTS
        }
        "keys" {
            code $KEYS
        }
        "tools" {
            code $TOOLS
        }
        default {
            echo $HELP
        }
    }
}

# Top as btop
function top {
    sudo btop
}