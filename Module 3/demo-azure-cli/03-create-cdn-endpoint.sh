#!/bin/sh
az cdn endpoint create \
  --name psazurestoragecdn \
  --profile-name psazurestoragecdn \
  --resource-group pluralsight-azure-storage-cdn \
  --location 'Central US' \
  --origin 'psazurestoragecdn.blob.core.windows.net' \
  --no-http | jq