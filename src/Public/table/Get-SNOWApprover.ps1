function Get-SNOWApprover {
    <#
    .SYNOPSIS
        Retrieves a sysapproval_approver record from SNOW
    .DESCRIPTION
        Gets a record from the sysapproval_approver table
    .NOTES
        Uses Get-SNOWObject as a template function.
    .OUTPUTS
        PSCustomObject. The full table record/s.
    .LINK
        https://docs.servicenow.com/bundle/sandiego-application-development/page/integrate/inbound-rest/concept/c_TableAPI.html
    .EXAMPLE
        Get-SNOWApprover -limit 1 -verbose
        Returns a single record from sysapproval_approver
    #>   

    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $approval_source,
        [Parameter()]
        [string]
        $approver,
        [Parameter()]
        [alias('ParentSysID')]
        [string]
        $document_id,
        [Parameter()]
        [string]
        $group,
        [Parameter()]
        [string]
        $source_table,
        [Parameter()]
        [string]
        $state,
        [Parameter()]
        [string]
        $sysapproval
    )
    DynamicParam { Import-DefaultParams -TemplateFunction "Get-SNOWObject" }

    Begin {
        $table = "sysapproval_approver"
    }
    Process {
        Invoke-SNOWTableREAD -table $table -Parameters $PSBoundParameters
    }
}
