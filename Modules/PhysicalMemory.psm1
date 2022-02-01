function Get-PhysicalMemories {
    #TODO Implementar/Verificar método para Sistemas Linux

    $CIM_PhMs = Get-CimInstance -ClassName CIM_PhysicalMemory;

    $PhysicalMemories = [System.Collections.Generic.List[System.Object]];

    $PhysicalMemories = $CIM_PhMs | ForEach-Object {
        $PhysicalMemories.Add(@{
            Capacity = $CIM_PhM.Capacity / 1GB;
            Speed = $CIM_PhM.Speed;
            ConfiguredClockSpeed = $CIM_PhM.ConfiguredClockSpeed;
        })
    }

}

Export-ModuleMember -Function Get-PhysicalMemories
