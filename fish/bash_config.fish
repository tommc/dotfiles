set -x PATH /opt/local/libexec/gnubin /opt/local/bin /opt/local/sbin ~/bin ~/android-sdk-mac_86/tools ~/android-sdk-mac_86/platform-tools ~/flexsdk/bin $PATH
set export MANPATH /opt/local/share/man $MANPATH
set export JAVA_HOME /System/Library/Frameworks/JavaVM.framework/Versions/1.6/Home
set export EC2_HOME ~/.ec2
set export PATH $PATH $EC2_HOME/bin
set export EC2_PRIVATE_KEY $EC2_HOME/pk-2VKX4TZU2IQHCRBIL2ADSK6D5BFV2FAU.pem
set export EC2_CERT $EC2_HOME/cert-2VKX4TZU2IQHCRBIL2ADSK6D5BFV2FAU.pem
set export USERDOMAIN "test"
set export COMPUTERNAME "tommc"
set export DYLD_LIBRARY_PATH "/opt/subversion/lib"
function mysql
	mysql5 $argv
end;

function mysqldump
	mysqldump5 $argv
end;

function mysqlhky
	mysql --defaults-file="~/.mysql-hockey.cnf" $argv
end;

function mysqlgal3
	mysql --defaults-file="~/.mysql-gal3.cnf" $argv
end;

function mysqlfbb3
	mysql --defaults-file="~/.mysql-bkb.cnf" $argv
end;

set if [ "$TERM" ! " "dumb" ]; then"
set     export LS_OPTIONS "'--color=auto'"
function ls
	ls $LS_OPTIONS -hF $argv
end;

function ll
	ls $LS_OPTIONS -lhF $argv
end;

function l
	ls $LS_OPTIONS -lAhF $argv
end;

function cd..
	"cd .." $argv
end;

function c
	"clear" $argv
end;

function e
	"exit" $argv
end;

function ssh
	"ssh -X" $argv
end;

function ..
	"cd .." $argv
end;

function mysqlstart
	sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper start $argv
end;

function mysqlstop
	sudo /opt/local/etc/LaunchDaemons/org.macports.mysql5/mysql5.wrapper stop $argv
end;

set FLEX_HOME "/Users/tom/flexsdk"

