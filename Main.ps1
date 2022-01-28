Get-ChildItem -Path .\Modules -Filter *.psm1 | ForEach-Object {
    Import-Module ($_.FullName);
}