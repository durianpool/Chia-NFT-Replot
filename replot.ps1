while ($True) {
	if (Test-Path -Path <OG Plots Directory>\*.plot) {
		Get-ChildItem <OG Plots Directory> | Sort CreationTime | Select -First 1 | Remove-Item | <Your_MadMax_script.ps1>
		} else {
		Break
		}
	}
