[CmdletBinding()]
param ()
process {
    foreach($line in Get-Content C:\folder\list_of_users.txt) {
        $cmdOutput = Test-LrListValue -Name "list_name" -Value "$line" # Change to the list you want to update
        if($cmdOutput.IsPresent  -eq $false){
            Add-LrListItem -Name "list_name" -Value "$line" # Add value if its not already in the list
        }
    }
}
end {
}