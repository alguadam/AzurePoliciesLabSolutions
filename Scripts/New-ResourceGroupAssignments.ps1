# Deploy Assignments via ARM Template
# Assign to Resource Group for Tests
$rgName = "ODL-policies-devops-73297"
$pathToARMTemplate = "..\Templates\Assignments\resourceGroup.json"
$pathToARMTemplateParameters = "..\Parameters\lab02-rgAssignments.json"

$assignmentAzDeploymentParams = @{
    ResourceGroupName     = $rgName
    TemplateFile          = (Get-Item $pathToARMTemplate).FullName
    TemplateParameterFile = (Get-Item $pathToARMTemplateParameters).FullName
    Name                  = "policyAssingments-" + (Get-Date -Format FileDateTimeUniversal)
}
New-AzResourceGroupDeployment @assignmentAzDeploymentParams