Set-PSReadlineKeyHandler -Key "Ctrl+d" -Function ViExit
Set-PSReadlineKeyHandler -Key "Tab" -Function AcceptSuggestion
Set-PSReadLineKeyHandler -Chord "Shift+Tab" -Function TabCompleteNext

$PSStyle.FileInfo.Directory = "$([char]0x1b)[34m"

Set-PSReadLineOption -PredictionSource None

function prompt
{
	Write-Host ("$PWD") -nonewline -foregroundcolor Green
	# Write-Host (" >") -nonewline -foregroundcolor Green
	return " "
}
