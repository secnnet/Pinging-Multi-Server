#
#  Pinging multi Servers at once
#

$ServerName = "10.50.14.34","10.80.9.142","10.50.14.35","10.50.14.36","10.50.14.37" 

foreach ($Server in $ServerName) 
{

		if (test-Connection -ComputerName $Server -Count 2 -Quiet ) 
		{ write-Host "$Alive Server" -ForegroundColor Green	} else
					{ Write-Warning "$Dead Server"}			
}
