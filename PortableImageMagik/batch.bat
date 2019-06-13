echo OFF
echo Welcome to the resizer batch
echo Enter the source folder path :

set /p %source_folder=

echo Enter the result folder path :

set /p %result_folder_1=

echo Choose a new size in pixel (eg: 1500x1500) :

set /p %pixel=

echo Choose a prefix name (could be blank) :

set /p %prefix=

for %%a in ("%source_folder%\*jpg") do (
   call convert.exe "%%~fa" -resize %pixel% -size %pixel% xc:white +swap -gravity center -composite "%result_folder_1%\%prefix%%%~nxa"
   echo "%%~fa"
)

echo done !
pause