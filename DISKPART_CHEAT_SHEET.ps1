<# THIS DIDN'T WORK

# Go into DISKPART mode;
diskpart

# List mounted disks;
list disk

# Select the desired disk number from list;
select disk 1

# Clean/wipe the disk;
clean

# Create primary partition;
create partition primary

# Select newly created partition;
select partition 1

# Format with FAT32 filesystem;
format fs=fat32 quick

# Assign letter to USB drive;
assign letter=D

# Exit diskpart;
exit

#>

<# THIS DIDN'T WORK EITHER

$diskpartCommands = @"
list disk
select disk 1  # Replace X with the number of your USB drive
clean
create partition primary
select partition 1
format fs=fat32 quick
assign letter=D  # Replace Y with your preferred drive letter
exit
"@

$diskpartProcess = Start-Process -FilePath "diskpart.exe" -ArgumentList "/s", "-" -PassThru -RedirectStandardInput -
$diskpartProcess.StandardInput.Write($diskpartCommands)
$diskpartProcess.WaitForExit()

#>

