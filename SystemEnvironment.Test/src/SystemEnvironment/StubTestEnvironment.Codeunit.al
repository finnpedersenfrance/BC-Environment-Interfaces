namespace FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;


codeunit 98002 "Stub Test Environment" implements IEnvironment
{
    Description = 'Stub Test Environment';

    procedure SystemEnvironment(): Enum "System Environment"
    begin
        exit(Enum::"System Environment"::Sandbox);
    end;

    procedure ThisCompanyName(): Text[30]
    begin
        exit('Test Company Name');
    end;

    procedure IsEvaluationCompany(): Boolean
    begin
        exit(true);
    end;
}
