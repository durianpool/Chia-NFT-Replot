while ($True) {
	if (Test-Path -Path (OG Plots Directory)\*.plot) {
		.\replot_file1.ps1
		} else {
		Break
		}
	}
