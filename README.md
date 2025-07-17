# Environment Interfaces in Business Central

**This project contains the code used in the articles on my blog about the same topic.**

The theme for this series is *Super fast tests covering 100% of your code*.

This 2025 series of articles is a continuation of the 2024 series called the Clean Code Initiative. 

Clean Code is a prerequisite for writing good tests, but it does not guarantee code coverage by tests. 

## Introduction

I will introduce three different contexts of Environment Interfaces, discussed in parts 1, 2, and 3. 

1. [Interface against the system environment (Sandbox or Production)](https://www.finnpedersenfrance.com/programming/2025/06/26/environment-interface-part-1.html)
2. [Interface against an external API](https://www.finnpedersenfrance.com/programming/2025/06/26/environment-interface-part-2.html)
3. [Interface against the standard application](https://www.finnpedersenfrance.com/programming/2025/06/26/environment-interface-part-3.html)

> **Environment interfaces** usually have a single implementation within the application but can have several implementations in the test application. There is no corresponding `Enum` implementing the `Interface`.

## Scenario

The app we are building communicates with an external API. 

We face several key requirements:

- The app can only be in production mode when running in a production environment. If running in a sandbox, it must operate in test mode.
- Our tests must cover all code paths, including those only reachable in production mode.
- Our tests cannot call the actual API, but we still need to verify both the requests we send and how we decode the API responses.
- Tests must be extremely fast, with runtimes measured in milliseconds.
- Writing tests should be quick and cost-effective.
- We want to test only our own code, assuming that dependencies and external systems work as expected. We assume everyone else knows what they are doing

> **Environment Interfaces** are the solution to this apparent paradox. 

