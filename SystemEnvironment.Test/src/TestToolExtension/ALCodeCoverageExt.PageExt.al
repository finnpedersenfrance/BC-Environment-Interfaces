namespace FinnPedersenFrance.EnvironmentInterfaces.TestToolExtension;

using System.TestTools.CodeCoverage;

pageextension 98000 "AL Code Coverage Ext" extends "AL Code Coverage"
{

    trigger OnOpenPage()
    begin
        Rec.SetFilter("Object ID", '97000..97009');
    end;
}
