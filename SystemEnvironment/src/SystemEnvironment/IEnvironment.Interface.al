namespace FinnPedersenFrance.EnvironmentInterfaces.SystemEnvironment;
interface IEnvironment
{
    /// <summary>
    /// Returns the state of the current system environment. That is either Production, Sandbox or empty.
    /// </summary>
    /// <param></param>
    /// <returns>System Environment</returns>
    procedure SystemEnvironment(): Enum "System Environment"

    /// <summary>
    /// Returns the name of the current company.
    /// </summary>
    /// <param></param>
    /// <returns>Company Name</returns>
    procedure ThisCompanyName(): Text[30]

    /// <summary>
    /// Returns the state of the current company. That is either Production or Evaluation.
    /// </summary>
    /// <param></param>
    /// <returns>False if Production Company. True if Evaluation Company.</returns>
    procedure IsEvaluationCompany(): Boolean
}
