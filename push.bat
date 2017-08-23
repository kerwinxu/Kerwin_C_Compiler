echo  ½«Program±¸·Ý


echo set strcommit=%date:~0,4%-%date:~5,2%-%date:~8,2%-%time:~0,2%-%time:~3,2%

git add .
git commit -m "%strcommit%"
git push remotename master
