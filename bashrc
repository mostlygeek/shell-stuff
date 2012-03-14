if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi
        
#check for source bashrc
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi


PS1="[\u@\h \W]$ "
# auto start screen
if [ -z "$STY" ]; then
    exec screen -dR
fi
