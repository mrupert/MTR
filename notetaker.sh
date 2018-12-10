#!bin/bash


##################################################################################
# My note taker
##################################################################################
export GREP_COLOR='always'
COLORS=("01;32" "01;31" "01;34" "01;36")
GREP_COLORS="mt=${COLORS[$NUM]}"
bold=$(tput bold)
normal=$(tput sgr0)
fnote1=$(tput sgr1) 
fnoteblue='\x1B[0;34m'
fnotered='\x1B[0;31m'
export NOTESFILE="/Users/matthew.rupert/mynotes.txt"
DATE_MATCHER="\d\d\d\d-\d\d-\d\d"
TODAY=`date +%Y-%m-%d`
SEPARATOR="-----------------------------------------------------------------------------------------------"

function takenotewithlabel()
{
    touch $NOTESFILE
    echo "$SEPARATOR" >> $NOTESFILE;
    echo -e "$TODAY: LABEL: $1" >> $NOTESFILE;
    echo -e
    echo "$2" >> $NOTESFILE;
    echo -e
}
function takenote() { touch $NOTESFILE; echo -e "$SEPARATOR\n$TODAY: \n$1" >> $NOTESFILE; }
function findnote()
{
    echo -e "\n${fnote2}${bold}${fnoteblue}Notes file: ${normal}$NOTESFILE";
    echo -e "${normal}${blue}Matching notes:${normal} "; 
    echo "${fnote1}";
    cat $NOTESFILE | sed -e 's/^/ /' | GREP_COLOR="01;32" grep -A1 -B3 --color=auto "$1" | grep -E --color "\d\d\d\d-\d\d-\d\d|-----|$1" ;

    echo "${normal}";
}

function shownotes()
{
    echo -e "\n${fnote2}${bold}${fnoteblue}Notes file: ${normal}$NOTESFILE";
    echo -e "${normal}${blue}Notes:${normal} "; 
    echo "${fnote1}";
    cat $NOTESFILE | sed -e 's/^/ /' | grep -E --color "\d\d\d\d-\d\d-\d\d|-----|$";
    echo "${normal}";
}
alias note="takenote"
alias takenote="takenote"
alias takenotelabel="takenotewithlabel"
alias shownotes="cat $NOTESFILE"
alias notes="cat $NOTESFILE"
alias shownotes="shownotes"
alias vinotes="vi $NOTESFILE"
alias findnote="findnote"
alias fnote="findnote"
alias catnotes="cat $NOTESFILE"

alias grepnotes="grep -i $NOTESFILE"


# End my notes taker
