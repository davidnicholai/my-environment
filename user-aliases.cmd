;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
glo=git log --oneline --all --graph --decorate  $*
gl=git log
ls=ls --show-control-chars -F --color $*
pwd=cd
clear=cls
history=cat "%CMDER_ROOT%\config\.history"
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"

editaliases=vim %userprofile%\Apps\cmder\config\user-aliases.cmd

;= Change directory commands
dev=cd %userprofile%\Dev 
cdc=cd %userprofile%\Dev\5J-Mobile

;= Git commands
gres= git reset --hard
gcd=git checkout Development
gpoh=git push origin HEAD  
gc=git commit -m "$*"  
ga=git add $*  
gst=git status  
newbranch=git checkout -b $*  
checkout=git checkout $*  
gpod=git pull origin Development  
gd=git diff $*  
gundo=git checkout -- $* 
gcb=git checkout -b $*  
gbd=git branch -D $*
gb=git branch  
gmd=git merge Development  
gsl=git stash list  
cc=git checkout $*  
