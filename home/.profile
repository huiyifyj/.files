# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Remove comment and warning about java for deepin linux
# unset _JAVA_OPTIONS

# Fix git error when gpgsign commit for Raspbian linux on raspberry pi
# export GPG_TTY=$(tty)

# Application in /opt folder
# Authorize to non-root user by
#   $ sudo chown huiyifyj:huiyifyj -R /opt
APP=/opt

# Go language ENV PATH
GOPATH=$HOME/.go # go get download path
GOROOT=$APP/go
GOPROXY="https://goproxy.io"
export GOPATH GOROOT GOPROXY
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
# Go setting for arm (for Raspbian on raspberry pi)
# GOOS=linux
# GOARCH=arm
# GOARM=6
# export GOOS GOARCH GOARM

# nvm, Node Version Manager
export NVM_DIR="$APP/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# Load nvm bash_completion for bash
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Rust custom installation directory
# More to https://github.com/rust-lang/rustup.rs/issues/618
RUSTUP_HOME=$APP/rust/rustup
CARGO_HOME=$APP/rust/cargo
export RUSTUP_HOME CARGO_HOME
# Cargo installation directory
# More to https://doc.rust-lang.org/cargo/commands/cargo-install.html
CARGO_INSTALL_ROOT=$APP/rust/cargo-install
export CARGO_INSTALL_ROOT
export PATH="$CARGO_HOME/bin:$CARGO_INSTALL_ROOT/bin:$PATH"

# JDK ENV setting, recommend to use AdoptOpenJDK
JAVA_HOME=$APP/jdk/jdk8 # JDK8 env variable
# JAVA_HOME=$APP/jdk/jdk11 # JDK11 env variable
export JAVA_HOME
export PATH=${JAVA_HOME}/bin:$PATH

# Gradle ENV setting
GRADLE_HOME=$APP/gradle
export PATH="$GRADLE_HOME/bin:$PATH"

# Lua env
LUA_HOME=$APP/lua
export PATH="$LUA_HOME/bin:$PATH"

# Flutter ENV Setting
export FLUTTER=$APP/flutter
export PATH="$FLUTTER/bin:$PATH"
# Flutter setting.
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# Alias command
# View all active ports
alias ssp="ss -lntup"
# View number of processes running per user
alias psu="ps hax -o user | sort | uniq -c | sort -hr"
