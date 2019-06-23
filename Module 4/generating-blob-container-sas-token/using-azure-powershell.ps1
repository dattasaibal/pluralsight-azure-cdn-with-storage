# First, retrieve the storage account
$StorageAccount = Get-AzStorageAccount `
    -Name psazurestoragecdn `
    -ResourceGroupName pluralsight-azure-storage-cdn

# Then, generate a Blob SAS token associated with our
# Stored Access Policy created in the last demo.
# We pass in our container name, access policy name,
# and the storage context to use
New-AzStorageContainerSASToken `
    -Container staticsite `
    -Policy cdn_v1 `
    -Context $StorageAccount.Context 