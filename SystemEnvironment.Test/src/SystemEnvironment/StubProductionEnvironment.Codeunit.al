namespace FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;


codeunit 98001 "Stub Production Environment" implements IEnvironment
{
    Description = 'Stub Production Environment';

    procedure SystemEnvironment(): Enum "System Environment"
    begin
        exit(Enum::"System Environment"::Production);
    end;

    procedure ThisCompanyName(): Text[30]
    begin
        exit('Production Company Name');
    end;

    procedure IsEvaluationCompany(): Boolean
    begin
        exit(false);
    end;
}
