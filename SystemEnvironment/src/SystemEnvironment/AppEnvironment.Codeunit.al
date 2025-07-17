namespace FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;

codeunit 97001 "App Environment" implements IEnvironment
{
    internal procedure SystemEnvironment(): Enum "System Environment"
    var
        EnvironmentInformation: Codeunit System.Environment."Environment Information";
    begin
        if EnvironmentInformation.IsProduction() then
            exit(Enum::"System Environment"::Production);
        if EnvironmentInformation.IsSandbox() then
            exit(Enum::"System Environment"::Sandbox);
        exit(Enum::"System Environment"::" ");
    end;

    internal procedure ThisCompanyName(): Text[30]
    begin
        exit(CopyStr(CompanyName(), 1, 30));
    end;

    internal procedure IsEvaluationCompany(): Boolean
    var
        Company: Record System.Environment.Company;
    begin
        Company.Get(CompanyName());
        exit(Company."Evaluation Company");
    end;
}
