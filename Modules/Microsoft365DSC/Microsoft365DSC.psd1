#
# Module manifest for module 'Microsoft365DSC'
#
# Generated by: Microsoft Corporation
#
# Generated on: 2020-06-03

@{

    # Script module or binary module file associated with this manifest.
    # RootModule = ''

    # Version number of this module.
    ModuleVersion     = '1.20.0603.1'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID              = '39f599a6-d212-4480-83b3-a8ea2124d8cf'

    # Author of this module
    Author            = 'Microsoft Corporation'

    # Company or vendor of this module
    CompanyName       = 'Microsoft Corporation'

    # Copyright statement for this module
    Copyright         = '(c) 2020 Microsoft Corporation. All rights reserved.'

    # Description of the functionality provided by this module
    Description       = 'This DSC module is used to configure and monitor Microsoft tenants, including SharePoint Online, Exchange, Teams, etc.'

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion = '5.1'

    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @(
        @{
            ModuleName      = "AzureADPreview"
            RequiredVersion = "2.0.2.105"
        },
        @{
            ModuleName      = "DSCParser"
            RequiredVersion = "1.1.0.3"
        },
        @{
            ModuleName      = "ExchangeOnlineManagement"
            RequiredVersion = "2.0.3"
        },
        @{
            ModuleName      = "Microsoft.Graph.Authentication"
            RequiredVersion = "0.7.0"
        },
        @{
            ModuleName      = "Microsoft.Graph.Groups.Planner"
            RequiredVersion = "0.7.0"
        },
        @{
            ModuleName      = "Microsoft.Graph.Identity.ConditionalAccess"
            RequiredVersion = "0.7.0"
        },
        @{
            ModuleName      = "Microsoft.Graph.Planner"
            RequiredVersion = "0.7.0"
        },
        @{
            ModuleName      = "Microsoft.PowerApps.Administration.PowerShell"
            RequiredVersion = "2.0.70"
        },
        @{
            ModuleName      = "MicrosoftTeams"
            RequiredVersion = "1.1.4"
        },
        @{
            ModuleName      = "MSCloudLoginAssistant"
            RequiredVersion = "1.0.29"
        },
        @{
            ModuleName      = "ReverseDSC"
            RequiredVersion = "2.0.0.6"
        },
        @{
            ModuleName      = "SharePointPnPPowerShellOnline"
            RequiredVersion = "3.23.2007.0"
        }
    )

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules     = @(
        'modules\M365DSCAgent.psm1',
        'modules\M365DSCUtil.psm1',
        'modules\M365DSCReverseGUI.psm1',
        'modules\M365DSCReverse.psm1',
        'modules\M365DSCLogEngine.psm1',
        'modules\M365DSCTelemetryEngine.psm1',
        'modules\M365DSCStubsUtility.psm1',
        'modules\M365DSCReport.psm1'
        'modules\EncodingHelpers\M365DSCEmojis.psm1'
    )

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    #FunctionsToExport = @()

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = @('Assert-M365DSCTemplate',
                          'Compare-M365DSCConfigurations',
                          'Export-M365DSCConfiguration',
                          'New-M365DSCDeltaReport',
                          'New-M365DSCReportFromConfiguration',
                          'Set-M365DSCAgentCertificateConfiguration',
                          'Test-M365DSCAgent',
                          'Test-M365DSCDependenciesForNewVersions')

    # Variables to export from this module
    # VariablesToExport = @()

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = 'DesiredStateConfiguration', 'DSC', 'DSCResourceKit', 'DSCResource', 'Microsoft365'

            # A URL to the license for this module.
            LicenseUri   = 'https://github.com/Microsoft/Microsoft365DSC/blob/master/LICENSE'

            # A URL to the main website for this project.
            ProjectUri   = 'https://github.com/Microsoft/Microsoft365DSC'

            # A URL to an icon representing this module.
            IconUri      = 'https://github.com/microsoft/Microsoft365DSC/blob/Dev/Modules/Microsoft365DSC/Dependencies/Images/Logo.png?raw=true'

            # ReleaseNotes of this module
            ReleaseNotes = "* Microsoft365Dsc
            * Improved event log function
          * EXOEmailAddressPolicy
            * Converted hardcoded tenant name into variables;
          * EXOHostedContentFilterPolicy
            * Added 'NoAction' as a valid input for property BulkSpamAction;
          * EXOInboundConnector
            * Fixed an issue where if the connector was created with a source
              of 'AdminUI', we now convert it to 'Default' in the Get function;
          * EXOOutboundConnector
            * Fixed an issue where if the connector was created with a source
              of 'AdminUI', we now convert it to 'Default' in the Get function;
          * TeamsTenantDialPlan
            * Fixed an issue extraction plans without any normalization rules;
          * Modules
            * M365DSCUtil:
              * Fixed an issue in Test-Microsoft365DSCParameterState where
                the same array of object was always being compared;
              * Issue 612 - Fixed an extra } in the event log output;"

            # Flag to indicate whether the module requires explicit user acceptance for install/update
            # RequireLicenseAcceptance = $false

            # External dependent modules of this module
            # ExternalModuleDependencies = @()

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    # HelpInfoURI = ''

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''
}
