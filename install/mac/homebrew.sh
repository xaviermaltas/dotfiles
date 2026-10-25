#Install Homebrew from GitHub --> https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/xaviermaltastarridas/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#Install wget --> https://formulae.brew.sh/formula/wget
brew install wget

#Install git --> https://formulae.brew.sh/formula/git
brew install git

#Install curl --> https://formulae.brew.sh/formula/curl
brew install curl

#Install tree --> https://formulae.brew.sh/formula/tree
brew install tree

#Install Helm --> https://helm.sh
brew install helm

#Install streamlink (used by scripts/openVLCTwitchStream.sh) --> https://formulae.brew.sh/formula/streamlink
brew install streamlink

#Install yt-dlp (used by scripts/openVLCyoutube.sh) --> https://formulae.brew.sh/formula/yt-dlp
brew install yt-dlp


#CASKS#
#Install Firefox --> https://formulae.brew.sh/cask/firefox
brew install --cask firefox

#Install Visual Studio Code --> https://formulae.brew.sh/cask/visual-studio-code
brew install --cask visual-studio-code

#Install GitKraken --> https://formulae.brew.sh/cask/gitkraken
brew install --cask gitkraken

#Install Postman --> https://formulae.brew.sh/cask/postman
brew install --cask postman

#Install IntelliJ IDEA Community Edition --> https://formulae.brew.sh/cask/intellij-idea-ce
brew install --cask intellij-idea-ce

#Install Edge --> https://formulae.brew.sh/cask/edge
brew install --cask microsoft-edge

#Install Lens --> https://formulae.brew.sh/cask/lens
brew install --cask lens

#Install VLC --> https://formulae.brew.sh/cask/vlc
brew install --cask vlc

#Install Warp Terminal --> https://formulae.brew.sh/cask/warp
brew install --cask warp

# Install Rectangle for window management --> https://formulae.brew.sh/cask/rectangle
brew install --cask rectangle

#Install Bartender for menu bar icon organiser--> https://formulae.brew.sh/cask/bartender
brew install --cask bartender


#SCRIPTS#
#Add this repo's scripts/ folder to the PATH
SCRIPTS_DIR="$(cd "$(dirname "$0")/../../scripts" && pwd)"
echo "export PATH=\"$SCRIPTS_DIR:\$PATH\"" >> /Users/xaviermaltastarridas/.zprofile
