
#Option 1: Create a deployment using predefined parameters.

# Connect-AzAccount

$LocName = “West Europe”

$deploymentName = “MyDeployment”

$templatePath = “C:\Users\turnea\OneDrive - Agilisys Ltd\GitHub\ARM-Templates\101-vm-simple-windows\azuredeploy.json”

$rgName = “MyDeploymentRG01”

New-AzResourceGroup -Name $rgName -Location $LocName

New-AzResourceGroupDeployment `
    -Name $deploymentName `
    -ResourceGroupName $rgName `
    -TemplateFile $templatePath `
    -newStorageAccountName “MyDeployStorageACC” `
    -location $LocName `
    -adminUsername “Charbel” `
    -dnsLabelPrefix "chmydepl1"
