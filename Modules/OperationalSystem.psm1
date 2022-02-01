function Get-OperationalSystem{
    
    #TODO Implementar/Verificar método para Sistemas Linux

    $CIM_OS = Get-CimInstance -ClassName CIM_OperatingSystem;

    $Name = $CIM_OS.Caption;
    $Manufacturer = $CIM_OS.Manufacturer;
    $Architecture = $CIM_OS.OSArchitecture;
    
    return "$($Name)($($Architecture)) | $($Manufacturer)";

}

function Get-MemoryUse {

    $TotalMemoryMB = $CIM_OS.TotalVisibleMemorySize / 1GB;
    $FreeMemoryMB = $CIM_OS.FreePhysicalMemory / 1GB;

    return "$($FreeMemoryMB)GB/$($TotalMemoryMB)GB";
}

Export-ModuleMember -Function Get-OperationalSystem, Get-MemoryUse
    