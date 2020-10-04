# Use vi movements
Set-PSReadlineOption -EditMode Vi

# History and file search shortcuts
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t'
Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r'

# Bash-like shorthands
function ll { dir }
function htop { ntop }
function du { Get-PSDrive }

# Compute file hashes - useful for checking successful downloads 
function md5    { Get-FileHash -Algorithm MD5 $args }
function sha1   { Get-FileHash -Algorithm SHA1 $args }
function sha256 { Get-FileHash -Algorithm SHA256 $args }

# Shorthand for Git
function g {
    if ($args.coung > 0) {
        git $args
    } else {
        git status
    }
}
