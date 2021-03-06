# Generated by mc-utilities

try { sh -c "find . -name .DS_Store -print -delete" }
catch {
    try { bash -c "find . -name .DS_Store -print -delete" }
    catch { echo "Deleting .DS_Store files failed, probably not on a linux based OS" }
}

New-Item -ItemType Directory -Force -Path "./out"
Remove-Item -Recurse -Force "./out/*"

### Base pack
Copy-Item -Path "./pack/" -Force -Recurse -Destination "./out/Badlion Text Shadow"

# Java edition
Get-ChildItem -Path "./out/Badlion Text Shadow/" | Compress-Archive -Force -DestinationPath "./out/Badlion Text Shadow Java.zip"
