[CmdletBinding()]
param ()
process {
    $cmdOutput = Get-LrLogSources
    Write-Ouptut $cmdOutput.name
    # $cmdOutput = Test-LrListValue -Name "list_name" -Value "$line" # Change to the list you want to update
}
end {
}