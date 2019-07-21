<#
.SYNOPSIS
    Bulk analyze the solutions in a directory.

.DESCRIPTION
    Bulk analyze the solutions in a directory. Each child directory of the specified
    directory will be assumed to contain a solution.

.PARAMETER Slug
    The slug of the exercises being analyzed.

.PARAMETER Directory
    The directory in which the solutions can be found.

.EXAMPLE
    The example below will analyze the two-fer solutions in the "~/exercism/two-fer" directory
    PS C:\> ./bulk-analyze.ps1 -Slug two-fer -Directory ~/exercism/two-fer
#>

param (
    [Parameter(Position = 0, Mandatory = $true)]
    [string]$Slug, 
    
    [Parameter(Position = 1, Mandatory = $true)]
    [string]$Directory
)

dotnet run --project ./src/Exercism.Analyzers.CSharp.Bulk/ $Slug $Directory