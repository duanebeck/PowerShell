# PowerShell Scripts

# LinkDirectories

* Create a PowerShell directory in My Documents, if you don't already have one.
* Save LinkDirectories.ps1 to that PowerShell directory.
* Run PowerShell with Windows-R, type PowerShell, and press enter.
* At the PowerShell prompt, type the following (replacing the target and source directories as appropriate)

```
& ([IO.Path]::Combine($env:USERPROFILE, 'Documents', 'PowerShell', 'LinkDirectories.ps1')) -Target S:\Condor2\Landscapes -Source C:\Condor2\Landscapes
```
