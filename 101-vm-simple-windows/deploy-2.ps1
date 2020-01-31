
#Option 2: Create a deployment using a parameter object.

# Connect-AzAccount

$LocName = “West Europe”
$deploymentName = “MyDeployment”
$templatePath = “C:\Users\turnea\OneDrive - Agilisys Ltd\GitHub\ARM-Templates\101-vm-simple-windows\azuredeploy.json”
$rgName = “MyDeploymentRG02”

# New Azure Resource Group

New-AzResourceGroup -Name $rgName -Location $LocName

# Create a deployment using a parameter object

$parameters = @{"newStorageAccountName"="MyDeployStorageACC";"location"="West Europe”;”adminUsername”=”Charbel”;”dnsLabelPrefix”=”chmydepl3"}

 
New-AzResourceGroupDeployment `
    -Name $deploymentName `
    -ResourceGroupName $rgName `
    -TemplateFile $templatePath `
    -TemplateParameterObject $parameters