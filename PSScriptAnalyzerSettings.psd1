# PSScriptAnalyzerSettings.psd1
# Settings for PSScriptAnalyzer invocation.
#@{
#    Rules = @{
#        PSUseCompatibleSyntax = @{
#            # This turns the rule on (setting it to false will turn it off)
#            Enable         = $true
#
#            # Simply list the targeted versions of PowerShell here
#            TargetVersions = @(
#                '3.0'
#            )
#        },
#        @{
#            Severity     = @('Error', 'Warning')
#            ExcludeRules = @('PSAvoidUsingCmdletAliases',
#                'PSAvoidUsingWriteHost')
#        }
#    }
#}