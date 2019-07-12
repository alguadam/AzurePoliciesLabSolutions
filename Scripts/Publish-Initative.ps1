# Deploy an Initiative via ARM Template
$pathToARMTemplate = "..\Templates\StorageAccount\initiative.json"

$initiativeAzDeploymentParams = @{
    TemplateFile = (Get-Item $pathToARMTemplate).FullName
    Name         = "initiative-" + (Get-Date -Format FileDateTimeUniversal)
    Location     = "westeurope"
}

New-AzDeployment @initiativeAzDeploymentParams