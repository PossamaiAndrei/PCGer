Import-Module $PSScriptRoot\OperationalSystem.class.ps1 -DisableNameChecking -Force;

function Get-OperationalSystem{
    
    #TODO Implementar/Verificar método para Sistemas Linux

    $CIM_OS = Get-CimInstance -ClassName CIM_OperatingSystem;

    $OperationalSystem = [OperationalSystem]::new($CIM_OS);

    write-host $OperationalSystem;

}

Export-ModuleMember -Function Get-OperationalSystem
    