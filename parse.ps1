# get all files in the folder and subfolders and remove file extension
$fileNames = Get-ChildItem -Path "./images" -Filter "*.png" -File -Recurse | ForEach-Object { $_.BaseName }

# write the file names to the output file
$fileNames | Out-File -FilePath "./output.txt"
