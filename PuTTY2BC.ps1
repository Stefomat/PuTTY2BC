$incre = 0

foreach($p in Get-ChildItem "HKCU:\SOFTWARE\SimonTatham\PuTTY\Sessions" -Name) {
  Write-Output "Session $p"
  & 'C:\Program Files\Beyond Compare 4\BCompare.exe' /ro "reg:\\HKEY_CURRENT_USER\SOFTWARE\SimonTatham\PuTTY\Sessions\Default%20Settings" "reg:\\HKEY_CURRENT_USER\SOFTWARE\SimonTatham\PuTTY\Sessions\$p"
  $incre++
  
  if($incre -ge 20){
    Read-Host -Prompt "20 Sessions, Enter to continue..."
    $incre = 0
  }
}
Write-Output "Done"
