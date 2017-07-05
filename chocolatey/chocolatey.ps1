# OPEN WITH ADMIN RIGHTS

Set-ExecutionPolicy Unrestricted

if (Get-Command choco -errorAction SilentlyContinue)
{
    Write-Host "Chocolate is already installed"
}else{
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))    
}

# BROWSERS
choco install -y googlechrome
choco install -y firefox

# EDITORS
choco install -y atom
choco install -y notepadplusplus
choco install -y visualstudio2015community
choco install -y sublimetext3
choco install -y sublimetext3.packagecontrol
choco install -y visualstudiocode

# PRODUCTIVITY & CLOUD
choco install -y dropbox
choco install -y googledrive
choco install -y clover
choco install -y onedrive
choco install -y lastpass
choco install -y slack
choco install -y sourcecodepro

# TOOLS
choco install -y wox
choco install -y seer
choco install -y filezilla
choco install -y bitvise-ssh-client

# WEB TOOLS
choco install -y git
choco install -y github
choco install -y nodejs
choco install -y gitkraken

# LANGUAGES
choco install -y jre8
choco install -y ruby
choco install -y python

# MY TOOLS
choco install -y adobereader
choco install -y 7zip
choco install -y ccleaner
choco install -y calibre
choco install -y greenshot
choco install -y defraggler
choco install -y spotify
choco install -y utorrent
choco install -y f.lux
choco install -y cpu-z
choco install -y speccy
choco install -y whatsapp
choco install -y potplayer
choco install -y virtualclonedrive
choco install -y vlc

# WINDOWS TOOLS
choco install -y dotnet4.5
choco install -y conemu
choco install -y vcredist2015

# GAMES
choco install -y steam
choco install -y battle.net




















