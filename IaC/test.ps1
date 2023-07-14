$User = "rute.paz@convatec.com"
$PWord = ConvertTo-SecureString -String "Ribmap16021998*" -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord

Connect-AzAccount -Credential $Credential
Select-AzSubscription -SubscriptionName "Technology Non-Production"
$resourceGroup = "rg-tech-nonprod-ceg"
$location = "West Europe"
New-AzStorageAccount -ResourceGroupName $resourceGroup -Name "sttestgitactions" -Location $location -SkuName Standard_LRS -Kind StorageV2