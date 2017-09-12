# Mac-Setup
## Inspired by [Nicolashery](https://github.com/nicolashery/mac-dev-setup)

! Work in progress

- [iTerm2](#iterm2)
- [Homebrew](#homebrew)
- [Bash](#bash)
- [Git](#git)
- [VSCode](#vscode)
- [MySQL](#mysql)
- [Node](#node)
- [Others](#others)


### iTerm2
___

Better console

* Download and install [iTerm2](http://www.iterm2.com/)

* In **iTerm > Preferences...**, under the tab **General**, uncheck **Confirm closing multiple sessions** and **Confirm "Quit iTerm2 (Cmd+Q)" command** under the section **Closing**.

* In the tab **Profiles**, create a new one with the "+" icon, and rename it to your first name for example. Then, select **Other Actions... > Set as Default**. Finally, under the section **Window**, change the size to something better, like **Columns: 125** and **Rows: 35**.

* Configure oh-my-zsh with Cobalt2

Paste on a terminal to install Oh-My-Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

Install Powerline-Fonts
```bash
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

1. Drop the cobalt2.zsh-theme file in to the ~/.oh-my-zsh/themes/ directory.
2. Open up your ZSH preferences at ~/.zshrc and change the theme variable to ZSH_THEME=cobalt2.
3. In iTerm2 access the Preferences pane on the Profiles tab.
4. Under the Colors tab import the cobalt2.itermcolors file via the Load Presets drop-down.
5. Under the Text tab change the font for each type (Regular and Non-ASCII) to 'Inconsolata for Powerline'. (Refer to the powerline-fonts repo for help on font installation.)
6. Refresh ZSH by typing source ~/.zshrc on the command line.



Download Cobalt2-iterm from [here](https://github.com/wesbos/Cobalt2-iterm)

### Homebrew
___

The most popular package manager one for OS X is [Homebrew](http://brew.sh/).


* Install Homebrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

* One thing we need to do is tell the system to use programs installed by Hombrew (in `/usr/local/bin`) rather than the OS default if it exists. We do this by adding `/usr/local/bin` to your `$PATH` environment variable:

```bash
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
```


* Install MacOS CLI and sign in to be able to install from the store directly from the console

```bash
brew install mas
mas signin mail@mail.com
```
* Create a file called brewfile

```bash
touch ~/brewfile
```
* Brewfile

```bash
## Required to install almost every app
tap 'caskroom/cask'

# Essentials
brew 'git'          # Essential
brew 'node'         # Essential comes with npm
brew 'heroku'       # Cloud Based Paas
brew 'git-lfs'      # Git Big Files Transfer

# Browsers
cask 'google-chrome' # Browser
cask 'firefox'       # Browser

# Coding Essentials
cask 'visual-studio-code'   # Awesomeness 🎆 💻 🎆
cask 'sourcetree'           # Git GUI
cask 'sublime-text'         # Ultra fast 🏃

# Design Essentials
cask 'sketch'        # Epic design tool
cask 'noun-project'  # Free icons

# MAC Quality of life
cask 'rocket'        # Emojis on 💊
cask 'alfred'        # Spotlight on 💊
cask 'spectacle'     # Windows Rearrangment

# Utilities
cask 'spotify'       # Music
cask 'slack'         # Chat - Work
cask 'discord'       # Chat - Games
cask 'whatsapp'      # Chat - Personal
cask 'flux'          # Eyes Health
cask 'adobe-acrobat-reader'    # PDF Reader
cask 'transmission'  # Torrents Manager   

# Cloud
cask 'dropbox'                 # Dropbox Cloud  
cask 'google-backup-and-sync'  # Google Cloud

# Coding Utilities
cask 'sequel-pro'    # SQL
cask 'vlc'           # Videos
cask 'filezilla'     # FTP

# Others
mas 'Amphetamine' id: 937984704 # Stop Mac from sleeping
mas 'Parcel - Delivery Tracking' id: 639968404 # Delivery Tracking
mas 'Pocket', id: 568494494 # Saved articles
mas 'Skitch - Snap. Mark up. Share.', id: 425955336 # Markup tools
mas 'Dr. Cleaner: Disk,Memory,System Optimizer', id: 921458519 # Clean memory and space 
```

Use this to find apps with Mas
```bash
mas search slack
```
* Install everything by running this

```bash
brew bundle install
```

* Install these apps manually
    - Microsoft Office Suite

### Bash
___

* Create a .bash_profile

```bash
touch ~/.bash_profile
```

* Brewup

Add useful alias

```bash
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
alias cd..='cd ..'
```
Restart bash profile and run __brewup__

```bash
source ~/.bash_profile
brewup
```

Now you can run  and that's it it will update homebrew packages

### Git
___

```bash
touch ~/.gitconfig
git config --global user.name "First Last"
git config --global user.email "Email"
git config --global credential.helper osxkeychain
```

Typical .gitconfig will look like this, be free to remove alias 

```bash
[user]
    name = First Last
    email = email@email.com
[github]
    user = username
[alias]
    a = add
    ca = commit -a
    cam = commit -am
    s = status
    pom = push origin master
    pog = push origin gh-pages
    puom = pull origin master
    puog = pull origin gh-pages
    cob = checkout -b
[credential]
    helper = osxkeychain
```

Or copy this [.gitignore](https://github.com/nicolashery/mac-dev-setup/blob/master/.gitignore)

### VSCode
___

* Use Settings-Sync Extension

Find my config [here](https://gist.github.com/alemesa/e1d85a6d82e56872f6ddfaf73fc11537)

Open VSCode and type "shell command" and add to the PATH. Close VSCODE, restar Terminal , now you can use any project with this

```bash
code \directory\to\open
```

My User Settings look like this
```javascript
{
  // Place your settings in this file to overwrite the default settings
  "editor.fontFamily": "'Fira Code', Consolas, 'Courier New', monospace",
  "editor.fontSize": 14,
  "editor.lineHeight": 0,
  "editor.lineNumbers": "on",
  "workbench.sideBar.location": "left",
  "sync.gist": "e1d85a6d82e56872f6ddfaf73fc11537",
  "sync.lastUpload": "2017-09-07T13:31:26.210Z",
  "sync.autoDownload": true,
  "sync.autoUpload": true,
  "sync.lastDownload": "2017-05-26T05:55:47.892Z",
  "sync.forceDownload": false,
  "sync.anonymousGist": false,
  "workbench.colorTheme": "Sublime Material Theme - Dark",
  "workbench.iconTheme": "seti",
  "vsicons.projectDetection.autoReload": true,
  "sync.host": "",
  "sync.pathPrefix": "",
  "php.validate.executablePath": "C:/PHP/php.exe",
  "emmet.syntaxProfiles": {
    "javascript": "jsx"
  },
  "workbench.colorCustomizations": {
    "statusBar.background": "#0D47A1",
    "activityBar.background": "#212121",
    "activityBarBadge.background": "#f44336",
    "sideBar.background": "#212121",
    "tab.activeBackground": "#212121",
    "tab.border": "#212121",
    "editorLineNumber.foreground": "#757575",
    "panel.background": "#212121",
    "panelTitle.activeBorder": "#FDD835"
  },
  "editor.renderIndentGuides": false,
  "git.enableSmartCommit": true,
  "editor.formatOnSave": true,
  "terminal.integrated.shell.osx": "/bin/zsh",
  "sync.quietSync": false,
  "sync.askGistName": false
  //"stylelint.enable": true,
  //"css.validate": false,
  //"scss.validate": false
}

```

### MySQL
___

* To install, run:

```bash
brew update # Always good to do
brew install mysql
``` 

* Setup MySQL

```bash
unset TMPDIR
mkdir /usr/local/var
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
```

* Usage
To start the MySQL server, use the `mysql.server` tool:
```bash
mysql.server start # start server
mysql.server stop  # stop server
mysql.server --help # find other commands
mysql -uroot # connect with the command-line client
exit # to quit the shell
```

### Node
___

* Install Node

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
nvm install node
nvm use node
node -v
```

* Add to path

To do so, add this line to your `~/.path` file, before the `export PATH` line:

```bash
PATH=/usr/local/share/npm/bin:$PATH
```

* Install Node Goodies
 Gulp
```js
npm install --global gulp-cli
```
 Git Lfs
```bash
git lfs install
```


### Others

* Show hidden files, paste this on the command line
```bash
defaults write com.apple.finder AppleShowAllFiles YES
```
