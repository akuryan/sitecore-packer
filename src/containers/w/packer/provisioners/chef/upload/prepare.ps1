# choco could be not installed on VM during this step
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host "Reloading Path variable"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User") 

Write-Host "Installing Chef Client"
# We might want to bump it later. Testing required
choco install chef-client -y --version 13.4.24 #--version 15.0.300 --force
[Environment]::SetEnvironmentVariable("CHEF_LICENSE", "accept-silent", "Machine")

Write-Host "Installing 7zip"
choco install 7zip.portable -y

Write-Host "Extracting cookbooks"
7z x C:\packer-chef\cookbooks.tar.gz -o"C:\packer-chef" -aoa
7z x C:\packer-chef\cookbooks.tar -o"C:\packer-chef" -aoa
