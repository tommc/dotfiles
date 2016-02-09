
function prompt_pwd --description 'Print the current working directory, NOT shortened to fit the prompt'
    if test "$PWD" != "$HOME"
        printf "%s" (echo $PWD|sed -e 's|/private||' -e "s|^$HOME|~|")
    else
        echo '~'
    end

end

set -xg GOROOT /usr/local/go
set -xg PATH $GOROOT/bin /opt/local/libexec/gnubin /opt/local/bin /opt/local/sbin ~/bin ~/android-sdk-mac_86/tools ~/android-sdk-mac_86/platform-tools ~/flexsdk/bin $PATH
set -xg MANPATH /usr/share/man /usr/local/share/man /usr/X11/share/man /opt/local/share/man $MANPATH
set -xg JAVA_HOME /System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
set -xg EC2_HOME ~/.ec2
set -xg PATH $PATH $EC2_HOME/bin ~/sbt/bin
set -xg EC2_PRIVATE_KEY $EC2_HOME/pk-2VKX4TZU2IQHCRBIL2ADSK6D5BFV2FAU.pem
set -xg EC2_CERT $EC2_HOME/cert-2VKX4TZU2IQHCRBIL2ADSK6D5BFV2FAU.pem
set -xg USERDOMAIN "test"
set -xg COMPUTERNAME "tommc"
set -xg DYLD_LIBRARY_PATH "/opt/subversion/lib"

# set LS_COLORS
echo begin\; (dircolors -c ~/.config/dircolors/dircolors) \;end eval2_inner \<\&3 3\<\&- | . 3<&0

function mysql
	mysql5 $argv
end;

function mysqldump
	mysqldump5 $argv
end;

set -xg LS_OPTIONS --color=auto
function ls
	command ls $LS_OPTIONS -hF $argv
end;

function ll
	command ls $LS_OPTIONS -lhF $argv
end;

function l
	command ls $LS_OPTIONS -lAhF $argv
end;

function mysqlstart
	sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper start $argv
end;

function mysqlstop
	sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper stop $argv
end;

set FLEX_HOME "/Users/tom/flexsdk"

