MySQL.Data.Entity
===

Connector/Net is a fully-managed ADO.NET driver for [MySQL].
  - Current version: 6.6.5

MySQL.Data
---
  - Installation command: ``Install-Package MySQL.Data``

#### Content
  - ``lib\net20\mysql.data.dll``
  - ``lib\net40\mysql.data.dll``


MySQL.Data.Entity
---
  - Installation command: ``Install-Package MySQL.Data.Entity``

#### Content
  - ``lib\net20\mysql.data.entity.dll``
  - ``lib\net40\mysql.data.entity.dll``

Reason for Custom Packages
---
There are also packages available at NuGet.org, but those do not seem to be up-to-date and are also
out of sync. 

The 5.1.7 package is kept for MPExtended, which requires this specific version due to an old Gentle
library. The official 5.1.7 package is broken (for example, it contains a copy of NuGet.exe).

[MySQL]:       http://www.mysql.com/downloads/connector/net/