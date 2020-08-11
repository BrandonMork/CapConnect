: # Primary Author: Aidan Edwards
: # Contact: Aidan.S.Edwards@gmail.com
: #
: # Import a collection to MongoDB
: # mongoExportCollection.cmd Database Collection [Filename]

: # https://stackoverflow.com/a/17623721/1526048
:<<"::CMDLITERAL"
@ECHO OFF
GOTO :CMDSCRIPT
::CMDLITERAL

if [ "$#" -eq 2 ]; then
  mongoimport --db $1 --collection $2 --file "$1~$2.json" --drop
else
  mongoimport --db $1 --collection $2 --file "$3" --drop
fi

exit
:CMDSCRIPT

if "%~3"=="" (
  mongoimport --db %1 --collection %2 --file "%1~%2.json" --drop
) else (
  mongoimport --db %1 --collection %2 --file "%3" --drop
)
