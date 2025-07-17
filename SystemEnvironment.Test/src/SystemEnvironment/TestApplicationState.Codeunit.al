namespace FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;

codeunit 98000 "Test Application State"
{
    Description = 'Test Application State';
    Subtype = Test;
    TestPermissions = Disabled;

    var
        LibraryAssert: Codeunit System.TestLibraries.Utilities."Library Assert";

    [Test]
    internal procedure TestNoCompanyName()
    var
        ApplicationStateManagement: Codeunit "Application State Management";
        StubProductionEnvironment: Codeunit "Stub Production Environment";
        ApplicationState: Enum "Application State";
        Licensee: Text[30];
    begin
        // [SCENARIO #001] No company name in disabled environment
        // [GIVEN] a setup with no licensee
        // [WHEN] calling ValidateApplicationState
        // [THEN] the application state should be empty. I.e. disabled.

        Licensee := '';
        ApplicationState := ApplicationStateManagement.GetApplicationState(Licensee, StubProductionEnvironment);

        this.LibraryAssert.AreEqual(Enum::"Application State"::" ", ApplicationState, 'Expected Application State to be disabled.');
    end;

    [Test]
    internal procedure TestProductionMode()
    var
        ApplicationStateManagement: Codeunit "Application State Management";
        StubProductionEnvironment: Codeunit "Stub Production Environment";
        ApplicationState: Enum "Application State";
        Licensee: Text[30];
    begin
        // [SCENARIO #002] Application State in production
        // [GIVEN] a setup with a valide licensee
        // [WHEN] calling ValidateApplicationState
        // [THEN] the application state should be prduction

        Licensee := StubProductionEnvironment.ThisCompanyName();
        ApplicationState := ApplicationStateManagement.GetApplicationState(Licensee, StubProductionEnvironment);

        this.LibraryAssert.AreEqual(Enum::"Application State"::Production, ApplicationState, 'Expected Application State to be Production.');
    end;

    [Test]
    internal procedure TestTestMode()
    var
        ApplicationStateManagement: Codeunit "Application State Management";
        StubTestEnvironment: Codeunit "Stub Test Environment";
        ApplicationState: Enum "Application State";
        Licensee: Text[30];
    begin
        // [SCENARIO #003] Application State in test
        // [GIVEN] a setup with a valide licensee
        // [WHEN] calling ValidateApplicationState
        // [THEN] the application state should be test

        Licensee := StubTestEnvironment.ThisCompanyName();
        ApplicationState := ApplicationStateManagement.GetApplicationState(Licensee, StubTestEnvironment);

        this.LibraryAssert.AreEqual(Enum::"Application State"::Test, ApplicationState, 'Expected Application State to be Test.');
    end;
}
