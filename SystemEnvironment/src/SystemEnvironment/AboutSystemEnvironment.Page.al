namespace FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;

page 97000 "About System Environment"
{
    AboutText = 'This page provides information about the System Environment.';
    AboutTitle = 'About System Environment';
    ApplicationArea = All;
    Caption = 'About System Environment';
    Editable = false;
    PageType = Card;
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group(Environment)
            {
                Caption = 'Environment';
                Editable = false;

                field("System Environment"; this.SystemEnvironment)
                {
                    Caption = 'System Environment';
                    Editable = false;
                    ToolTip = 'Specifies the state the system environment.';
                }
                field(EnvironmentName; this.EnvironmentInformation.GetEnvironmentName())
                {
                    Caption = 'Environment Name';
                    Editable = false;
                    ToolTip = 'Specifies the environment the user is currently working in.';
                }
                field(CompanyName; this.CurrentCompanyName)
                {
                    Caption = 'Company Name';
                    Editable = false;
                    ToolTip = 'Specifies the current company name.';
                }
                field(IsEvaluationCompany; this.IsEvaluationCompany)
                {
                    Caption = 'Is Evaluation Company';
                    Editable = false;
                    ToolTip = 'Specifies if the current company is an evaluation company.';
                }
            }
        }
    }
    var

        EnvironmentInformation: Codeunit System.Environment."Environment Information";
        IsEvaluationCompany: Boolean;
        SystemEnvironment: Enum "System Environment";
        CurrentCompanyName: Text[30];

    trigger OnOpenPage()
    var
        AppEnvironment: Codeunit "App Environment";
    begin
        this.IsEvaluationCompany := AppEnvironment.IsEvaluationCompany();
        this.SystemEnvironment := AppEnvironment.SystemEnvironment();
        this.CurrentCompanyName := AppEnvironment.ThisCompanyName();
    end;

}
