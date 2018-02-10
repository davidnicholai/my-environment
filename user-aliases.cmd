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

ariadl=C:\Users\limd\Apps\aria2-1.31.0-win-64bit-build1\aria2c.exe -x 16 -s 16 -d "C:\Users\limd\Downloads" $*
editaliases=vim C:\Users\limd\Apps\cmder\config\user-aliases.cmd

;= Change directory commands
dev=cd C:\Projects  
cdc=cd C:\Projects\5J-Mobile
cdb=cd C:\Projects\_Base-Libraries
cdsk=cd C:\Projects\_Base-Skin
cdg=cd C:\Projects\_G8-Mobile
cds=cd C:\Projects\_Spirit  
cdv=cd C:\Projects\_Viva  
cdsu=cd C:\Projects\_Base-Skin\base  

;= Git commands
gres= git reset --hard
gcd=git checkout Development
gdv=git pull origin Development
gpoh=git push origin HEAD  
gc=git commit -m "$*"  
ga=git add $*  
gs=git status  
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

;= Git resets
cleanhard=C:\Users\limd\Apps\cmder\config\cleanhard.bat  
freshg8=C:\Users\limd\Apps\cmder\config\freshg8.bat  
freshlib=C:\Users\limd\Apps\cmder\config\freshlib.bat 
freshsub=C:\Users\limd\Apps\cmder\config\freshsub.bat
freshskin=C:\Users\limd\Apps\cmder\config\freshskin.bat
freshprism=C:\Users\limd\Apps\cmder\config\freshprism.bat
freshss=C:\Users\limd\Apps\cmder\config\freshss.bat  
fresh5j=C:\Users\limd\Apps\cmder\config\freshcebu.bat  

emu=emulator @marshmallow  
fastbook=cd C:\Projects\nps-fast-book

