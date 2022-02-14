$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"
$adminUsername = Read-Host -Prompt "Enter the administrator username"
$adminPassword = Read-Host -Prompt "Enter the administrator password" -AsSecureString

#New-AzResourceGroup -Name $resourceGroupName -Location "$location"
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateUri "https://github.com/sdaly99/2022build/blob/36c960ab13f3a3f017bc778bd40f3c1f39f88eed/template.json" `
    -adminUsername $adminUsername `
    -adminPassword $adminPassword `
  
 (Get-AzVm -ResourceGroupName $resourceGroupName).name