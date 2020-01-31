
# Option 3: Create a deployment using a parameter file.

# Connect-AzAccount

$LocName = “West Europe”
$deploymentName = “MyDeployment”
$templatePath = “C:\Users\turnea\OneDrive - Agilisys Ltd\GitHub\ARM-Templates\101-vm-simple-windows\azuredeploy.json”
$rgName = “MyDeploymentRG03”

# New Azure Resource Group

New-AzResourceGroup -Name $rgName -Location $LocName

# Create a deployment using a parameter file

$parameterFilePath = “C:\Users\turnea\OneDrive - Agilisys Ltd\GitHub\ARM-Templates\101-vm-simple-windows\azuredeploy.parameters.json"
 
New-AzureRmResourceGroupDeployment `
    -Name $deploymentName `
    -ResourceGroupName $rgName `
    -TemplateFile $templatePath `
    -TemplateParameterFile $parameterFilePath