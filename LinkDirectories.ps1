param(
    [Parameter(Mandatory=$true)]
    $Target,

	[Parameter(Mandatory=$true)]
	$Source
)

$directories = Get-ChildItem -Path $Target -Directory
$directories | %{
	$name = [IO.Path]::GetFileName($_)
	$src = [IO.DirectoryInfo][IO.Path]::Combine($Source, $name)
	if (-not $src.Exists)
	{
		Write-Host -ForegroundColor Yellow 'Linking' $src.Name 'to' $_.FullName
		New-Item -ItemType Junction -Path $src.FullName -Target $_.FullName
	}
} | Out-Null
