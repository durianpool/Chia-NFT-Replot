# Chia Network - Replot OG Plot with NFT Plot automatically using MADMAX Windows Version

This script is for replotting an OG plot to a new NFT plot.
Executing the script will delete an OG plot and plot a new NFT plot one by one, until OG plot directory do not have any .plot file.
- Please read README before use.
- Use at your own risk.
- Use as you like. Feel free to change the script to suit your purpose. 

## Attention
- This script is for Windows Powershell use only.
- Please use the latest release of stotiks/chia-plotter. https://github.com/stotiks/chia-plotter/releases/tag/v0.1.1 or above.
- Please use the latest release of Chia-Network/chia-blockchain. https://github.com/Chia-Network/chia-blockchain/releases/tag/1.2.0 or above.

## Who should use the script:
- You have a HDD full with OG plots.
- You want to minimize lost of farming chances.
- You want to replot OG to NFT plot, but do not want to delete all OG plots and lose all farming chances at once.
- You want to easily replace all OG with NFT plots automatically, without manually delete OG plot and create NFT plot one by one. 

## What is the script doing:
1. Test a <OG_Plots_Directory>.
2. If the <OG_Plots_Directory> contains any file with .plot extension, it will remove the oldest one.
3. After that, it will run <Your_MadMax_chiaplotter.ps1>, to create one NFT plot and transfer to <Your_NFT_Plots_Directory>.
4. After finished transferring, it will repeat 1. to 3.. (Second plot will not start until finished transferring).
5. This process will loop until the <OG_Plots_Directory> does not have any .plot file.

## How to Run
1. Make a new folder to store NFT plots only. <Your_NFT_Plots_Directory>
2. Change <Your_MadMax_chiaploter.ps1>'s number of plot variable to 1 (`-n 1`)
3. Change <Your_MadMax_chiaploter.ps1>'s final directory to <Your_NFT_Plots Directory>. (`-d <Your_NFT_Plots_Directory>`)
4. Replace `-p Pool Public Key` with `-c Pool Contract Address` in <Your_MadMax_chiaploter.ps1>.
5. Download and put replot.ps1 to <Your_MadMax_Folder>.
6. Edit replot.ps1 <OG_Plots_Directory> according to your folder location.
7. run `<Your_MadMax_Folder>.\replot.ps1`

## Reminder
- Do not forget to add your new NFT plot directory to the farm or pool. 

## Remarks
Example of replot.ps1 script:

    while ($True) {
        if (Test-Path -Path D:\Plots\*.plot) {
            Get-ChildItem D:\Plots | Sort CreationTime | Select -First 1 | Remove-Item | .\chiaplotter.ps1
            } else {
            Break
            }
        }

 - Please tell me if you found bugs. Thank you.
 - website: https://durianpool.github.io/
 
Your tips encourage me. Thank you.
 - XCH: xch16ckhjxafchfc9uy7qlzj0nde9fslxcw83q2dxnv3az3mx6rgntqqvjrv94
 - BTC: bc1q8q70a9c82tc0yetstszkjha7nqshakjfukc7fw
 - ETH: 0xee5e4f1E9C2AaE3c3ffAB286f7c396401a98A44d
