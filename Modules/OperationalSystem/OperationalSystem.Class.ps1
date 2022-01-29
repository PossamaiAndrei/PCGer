class OperationalSystem {

    [string]$Name;
    [string]$Manufacturer;
    [string]$Architecture;

    OperationalSystem([CimInstance]$CIM_OS){
        
        $this.Name = $CIM_OS.Caption;
        $this.Manufacturer = $CIM_OS.Manufacturer;
        $this.Architecture = $CIM_OS.OSArchitecture;
    }

    [string] ToString(){
        return "$($this.Name)($($this.Architecture)) | $($this.Manufacturer)";
    }

}