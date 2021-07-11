# Chia Network - Replot OG Plot with NFT Plot using MADMAX Windows Version

This script is for replotting an OG plot to a NFT plot.
Execute the script will delete an OG plot and plot a new NFT plot one by one, until OG plot directory do not have any .plot file.
- Please read the script and understand the command before use.
- Use at your own risk.
- No Fee, No Donation.  Use as you like. Feel free to change the script to suit your purpose. 

## Attention
- This script is for Windows Powershell use only.
- Please use the latest release of stotiks/chia-plotter. https://github.com/stotiks/chia-plotter/releases/tag/v0.1.1 or above.
- Please use the latest release of Chia-Network/chia-blockchain. https://github.com/Chia-Network/chia-blockchain/releases/tag/1.2.0 or above.

## What is the script doing:
1. Test a <OG_Plots_Directory>.
2. If the <OG Plots Directory> contains any file with .plot extension, it will remove the oldest one.
3. After that, it will run <Your_MadMax_chiaplotter.ps1>, to create one NFT plot and transfer to <Your NFT Plots Directory>.
4. This process will loop until <OG Plots Directory> does not have any .plot file.

## Installation
1. Make a folder to store NFT plots only. <Your NFT Plots Directory>
2. Change <Your_MadMax_chiaploter.ps1>'s number of plot variable to 1 (-n 1)
3. Change <Your_MadMax_chiaploter.ps1>'s final directory to <Your NFT Plots Directory>. (-d <Your NFT Plots Directory>)   
4. Download and put replot.ps1 to <Your_MadMax_Folder>.
5. Edit <OG Plots Directory> according to your situation.
6. run <Your_MadMax_Folder>.\replot.ps1

## Remarks
Example of replot.ps1 script:

    while ($True) {
        if (Test-Path -Path D:\Plots\*.plot) {
            Get-ChildItem D:\Plots | Sort CreationTime | Select -First 1 | Remove-Item | .\chiaplotter.ps1
            } else {
            Break
            }
        }
