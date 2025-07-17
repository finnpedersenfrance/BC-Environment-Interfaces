namespace FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;

enum 97001 "Application State"
{
    Extensible = true;

    value(0; " ")
    {
        Caption = ' ', Locked = true;
    }
    value(1; Test)
    {
        Caption = 'Test';
    }
    value(2; Production)
    {
        Caption = 'Production';
    }
}
