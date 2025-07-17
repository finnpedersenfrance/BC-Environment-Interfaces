namespace FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;

codeunit 97002 "Application State Management"
{
    internal procedure GetApplicationState(Licensee: Text[30]; Environment: Interface IEnvironment): Enum "Application State"
    begin
        case true of
            (Licensee = Environment.ThisCompanyName()) and
            (Environment.SystemEnvironment() = Enum::"System Environment"::Production) and
            (not Environment.IsEvaluationCompany()):
                exit(Enum::"Application State"::Production);
            (Licensee = Environment.ThisCompanyName()):
                exit(Enum::"Application State"::Test);
            else
                exit(Enum::"Application State"::" ");
        end;
    end;

}
