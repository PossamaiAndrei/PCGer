Import-Module $PSScriptRoot\PhysicalMemory.Class.ps1 -DisableNameChecking -Force;

function Get-PhysicalMemories {
    #TODO Implementar/Verificar método para Sistemas Linux

    $CIM_PhMs = Get-CimInstance -ClassName CIM_PhysicalMemory;

    $PhysicalMemories = $CIM_PhMs | ForEach-Object {
        return [PhysicalMemory]::new($_);
    }

    write-host $PhysicalMemories;

}

Export-ModuleMember -Function Get-PhysicalMemories
