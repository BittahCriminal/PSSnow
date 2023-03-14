function New-SNOWSCRequest {
    <#
    .SYNOPSIS
        Creates a sc_request record in SNOW
    .DESCRIPTION
        Creates a record in the sc_request table
    .NOTES
        Uses New-SNOWObject as a template function.
    .OUTPUTS
        PSCustomObject. The full table record/s (-passthru only).
    .LINK
        https://docs.servicenow.com/bundle/sandiego-application-development/page/integrate/inbound-rest/concept/c_TableAPI.html
    .EXAMPLE
        New-SNOWSCRequest -Properties @{"<key>"="<value>"} -PassThru
        Creates a single record in sc_request and returns the new record with SysID
    #>   

    [CmdletBinding(SupportsShouldProcess)]
    param (
        [Parameter()]
        [string]
        $delivery_address,
        [Parameter()]
        [alias('requested_for_date')]
        [string]
        $requested_date,
        [Parameter()]
        [string]
        $requested_for,
        [Parameter()]
        [string]
        $request_state,
        [Parameter()]
        [string]
        $special_instructions,
        [Parameter()]
        [string]
        $stage,
        [Parameter()]
        [boolean]
        $active,
        [Parameter()]
        [string]
        $activity_due,
        [Parameter()]
        [string]
        $additional_assignee_list,
        [Parameter()]
        [string]
        $approval,
        [Parameter()]
        [string]
        $approval_set,
        [Parameter()]
        [string]
        $assigned_to,
        [Parameter()]
        [string]
        $assignment_group,
        [Parameter()]
        [alias('service')]
        [string]
        $business_service,
        [Parameter()]
        [alias('configuration_item')]
        [string]
        $cmdb_ci,
        [Parameter()]
        [alias('additional_comments')]
        [string]
        $comments,
        [Parameter()]
        [string]
        $comments_and_work_notes,
        [Parameter()]
        [string]
        $company,
        [Parameter()]
        [string]
        $delivery_plan,
        [Parameter()]
        [string]
        $delivery_task,
        [Parameter()]
        [string]
        $description,
        [Parameter()]
        [string]
        $due_date,
        [Parameter()]
        [string]
        $expected_start,
        [Parameter()]
        [string]
        $follow_up,
        [Parameter()]
        [string]
        $group_list,
        [Parameter()]
        [string]
        $impact,
        [Parameter()]
        [boolean]
        $made_sla,
        [Parameter()]
        [string]
        $number,
        [Parameter()]
        [alias('opened')]
        [string]
        $opened_at,
        [Parameter()]
        [string]
        $opened_by,
        [Parameter()]
        [string]
        $parent,
        [Parameter()]
        [string]
        $priority,
        [Parameter()]
        [string]
        $service_offering,
        [Parameter()]
        [string]
        $short_description,
        [Parameter()]
        [string]
        $sla_due,
        [Parameter()]
        [string]
        $state,
        [Parameter()]
        [string]
        $urgency,
        [Parameter()]
        [string]
        $user_input,
        [Parameter()]
        [string]
        $watch_list,
        [Parameter()]
        [alias('actual_end')]
        [string]
        $work_end,
        [Parameter()]
        [string]
        $work_notes,
        [Parameter()]
        [string]
        $work_notes_list,
        [Parameter()]
        [alias('actual_start')]
        [string]
        $work_start
    )
    DynamicParam { Import-DefaultParams -TemplateFunction "New-SNOWObject" }

    Begin {
        $table = "sc_request"
    }
    Process {
        Invoke-SNOWTableCREATE -table $table -Parameters $PSBoundParameters
    }
}

