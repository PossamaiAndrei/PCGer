class PhysicalMemory {

    [double]$Capacity;
    [int]$Speed;
    [int]$ConfiguredClockSpeed;

    PhysicalMemory([CimInstance]$CIM_PhM){

        $this.Capacity = $CIM_PhM.Capacity / 1GB;
        $this.Speed = $CIM_PhM.Speed;
        $this.ConfiguredClockSpeed = $CIM_PhM.ConfiguredClockSpeed;
    }

    [string] ToString() {

        return "Memmory $($this.Capacity)GB ($($this.ConfiguredClockSpeed)MHz/$($this.Speed)MHz)";
    }

}