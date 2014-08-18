function Invoke-Haste
{
    param(
    [Parameter(Mandatory=$True, ValueFromPipeline = $true)]
    [string] $content
    )

    $baseUrl = "http://hastebin.com/"

    $response = Invoke-RestMethod ($baseUrl + "documents") -Method Post -Body $content

    

    ($baseUrl + $response.key)
}
