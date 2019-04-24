# brutforce script to make some organizational units
# you need to change "DC=DC-Madison-1" to match your domain and update the BR initials to match or remove them


Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name BR_Computers -Path "DC=DC-Madison-1" -Description "BR Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=BR_Computers,DC=DC-Madison-1"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=BR_Computers,DC=DC-Madison-1"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=BR_Computers,DC=DC-Madison-1"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=BR_Computers,DC=DC-Madison-1"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=BR_Computers,DC=DC-Madison-1"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=BR_Computers,DC=DC-Madison-1"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=BR_Computers,DC=DC-Madison-1"
 New-ADOrganizationalUnit -Name Servers -Path "OU=BR_Computers,DC=DC-Madison-1"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=BR_Computers,DC=DC-Madison-1"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=BR_Computers,DC=DC-Madison-1"
New-ADOrganizationalUnit -Name BR_Groups -Path "DC=DC-Madison-1" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name BR_Privileged_Accounts -Path "DC=DC-Madison-1" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name BR_Users -Path "DC=DC-Madison-1" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=BR_Groups,DC=DC-Madison-1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=BR_Groups,DC=DC-Madison-1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=BR_Groups,DC=DC-Madison-1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=BR_Groups,DC=DC-Madison-1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=BR_Groups,DC=DC-Madison-1"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=BR_Groups,DC=DC-Madison-1"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=BR_Groups,DC=DC-Madison-1"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
