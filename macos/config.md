* Install Homebrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
* Install MacOS CLI and sign in

```bash
brew install mas
mas signin mail@mail.com
```
Open /Users/you
and create a file call Brewfile
and add the programs that you want installed, then do 

* My Brewfile
```bash
tap 'caskroom/cask'

brew 'git'
brew 'npm'

cask 'brackets'
cask 'flux'
cask 'firefox'
cask 'gimp'
cask 'google-chrome'
cask 'mamp'
cask 'opera'
cask 'spectacle'
cask 'sequel-pro'
cask 'vlc'

mas 'Numbers', id: 409203825
mas 'Pages', id: 409201541
mas 'Slack', id: 803453959
mas 'Sip', id: 507257563 
mas 'Simplenote', id: 692867256 
mas 'Todoist', id: 585829637
```

```bash
brew bundle install
```

* Config Bash

touch .bash_profile

```bash
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'
```

then use:
source ~/.bash_profile

Now you can run brewup and that's it it will update homebrew packages

git config --global user.name "First Last"
touch .gitconfig

My .gitconfig will have this 

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

* Install Node

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash
nvm install node
nvm use node
node -v
```

* Install Node Goodies

```js
npm install --global gulp-cli
```
