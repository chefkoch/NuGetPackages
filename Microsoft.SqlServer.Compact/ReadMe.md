Microsoft.SqlServer.Compact
===

SQL Server Compact. An embedded SQL database.

Microsoft.SqlServerCe
---
  - Current version: 4.0.8876.1
  - Installation command: ``Install-Package Microsoft.SqlServerCe``

#### Content
  - ``lib\net40\System.Data.SqlServerCe.dll``
  - Copies various NativeBinaries during ``BeforeBuild``-targets to ``$(TargetDir)``

Microsoft.SqlServerCe.Entity
---
  - Current version: 4.0.8876.1
  - Installation command: ``Install-Package Microsoft.SqlServerCe.Entity``

#### Content
  - ``lib\net40\System.Data.SqlServerCe.Entity.dll``

Reason for Custom Packages
---
There are also packages available at NuGet.org, but those modify the project that references them everytimt the package is being installed by adding commands to the postbuild.
Within the custom package this modification has been replaced by a MSBuild-targets file.

Building the Custom Packages
---
The content of the original packages can be copied into in the version specifc subdir.
Before building the package make sure to remove the ``content`` and the ``tools`` folder.
