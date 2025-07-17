namespace FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;

using FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;

permissionset 97000 "System Environment"
{
    Assignable = true;
    Caption = 'System Environment', MaxLength = 30, Locked = true;
    Permissions = codeunit "App Environment" = X,
        codeunit "Application State Management" = X,
        page "About System Environment" = X;
}