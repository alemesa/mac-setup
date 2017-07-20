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


### iTerm2

Better console

* Download and install [iTerm2](http://www.iterm2.com/)

* In **iTerm > Preferences...**, under the tab **General**, uncheck **Confirm closing multiple sessions** and **Confirm "Quit iTerm2 (Cmd+Q)" command** under the section **Closing**.

* In the tab **Profiles**, create a new one with the "+" icon, and rename it to your first name for example. Then, select **Other Actions... > Set as Default**. Finally, under the section **Window**, change the size to something better, like **Columns: 125** and **Rows: 35**.

### Homebrew

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
* Open /Users/you
and create a file called brewfile

```bash
touch ~/brewfile
```
* Brewfile


```bash
tap 'caskroom/cask'

brew 'git'
brew 'npm'

cask 'dropbox'
cask 'rocket'
cask 'alfred'
cask 'gitkraken'
cask 'spotify'
cask 'slack'
cask 'flux'
cask 'firefox'
cask 'google-chrome'
cask 'spectacle'
cask 'sequel-pro'
cask 'vlc'
cask 'discord'
cask 'filezilla'

mas 'Amphetamine' id: 937984704
mas 'Parcel - Delivery Tracking' id: 639968404
mas 'Slack', id: 803453959
mas 'Pocket', id: 568494494
```

Use this to find apps with Mas
```bash
mas search slack
```

* Install everything by running this

```bash
brew bundle install
```

### Bash

* Create a .bash_profile

```bash
touch ~/.bash_profile
```

* Brewup

Add useful alias

```bash
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
```
Restart bash profile and run __brewup__

```bash
source ~/.bash_profile
brewup
```

Now you can run  and that's it it will update homebrew packages

### Git

```bash
touch ~/.gitconfig
git config --global user.name "First Last"
git config --global user.email "Email"
git config --global credential.helper osxkeychain
```

My .gitconfig will look like this 

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

Use Settings-Sync Extension

Find my config [here](https://gist.github.com/alemesa/e1d85a6d82e56872f6ddfaf73fc11537)

### MySQL

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

```js
npm install --global gulp-cli
```
