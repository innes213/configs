export PATH=$PATH

#export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

# Pre-empt BSD commands with GNU Core Utils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Color-coded file listings
eval `dircolors ~/.dir_colors`
alias ls="ls --color=auto"

# Pandora general dev stuff
export P4PORT=ssl:perforce.savagebeast.com:1666
export P4CLIENT=rhislop-laptop
export VM_ROOT=$HOME/vm_vagrant
export P4_ROOT=$HOME/p4root
export RADIO=$P4_ROOT/ce/SavageBeast/Engineering/projects/radio
export CS=$P4_ROOT/ce/SavageBeast/Engineering/projects/customerservice

alias cpcs="cp -v -f -u -R $CS/web/* $VM_ROOT/customerservice/web/customerservice"
alias cpweb="cp -v -f -u -R $RADIO/web/* $VM_ROOT/radio/web/radio"
alias cptest="cd $RADIO/test && find ./ -name '*.py' -exec cp -f -u --parents -v {} $VM_ROOT/radio/test \; && chmod 755 $VM_ROOT/radio/test/*/*.py" ;

# Speaker.js config stuff
alias nw=/Applications/nwjs.app/Contents/MacOS/nwjs

# Java Version Selection
java6() {
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
}

java8() {
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home
}

# Gradle
export GRADLE_HOME=/Applications/gradle-2.11
export PATH=$PATH:$GRADLE_HOME/bin
