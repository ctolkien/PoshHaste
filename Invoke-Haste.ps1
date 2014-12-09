function Invoke-Haste
{
<#
	.SYNOPSIS
    Supports sending content to Hastebin.com

    .PARAMETER Content
    The content to be sent to hastebin.com

    .PARAMETER ServiceUrl
    The URL of your hastebin server. This will default to http://hastebin.com

    .OUTPUTS 
    System.String. Returns the URL of the hastebin resource.

    .EXAMPLE
    C:\PS>get-content | invoke-haste

    .EXAMPLE
    C:\PS>"Hello World" | invoke-haste

    .EXAMPLE
    C:\PS>invoke-haste "Hello World"

#>

    param(
    [Parameter(Mandatory=$True, ValueFromPipeline = $true)]
    [string] $content,
    [string] $serviceUrl = "http://hastebin.com/"
    )

    $response = Invoke-RestMethod ($serviceUrl + "documents") -Method Post -Body $content

    

    ($serviceUrl + $response.key)
}
