MySQL.Data.Entity
===

Connector/Net is a fully-managed ADO.NET driver for [MySQL].

There are also packages available at NuGet.org, but those do not seem to be up-to-date and are also
out of sync.

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

Changelog
---
  - v6.7.4
      - Added new version from http://dev.mysql.com/downloads/connector/net/6.7.html
  - v6.6.6
      - Added new version from http://dev.mysql.com/downloads/connector/net/6.6.html
  - v6.5.7
      - Added new version from http://dev.mysql.com/downloads/connector/net/6.5.html
  - v6.5.x & 6.6.x
      - Renamed folders to prevent mulitple folders for the same minor version releases
  - v5.1.7
      - Added older package for MPExtended, which requires this specific version due to an old Gentle
        library. The official 5.1.7 package is broken (for example, it contains a copy of NuGet.exe).
  - v6.6.5
      - Added latest available version
  - v6.5.6
      - Initial package release: added version currently by MP2 by that time

[MySQL]:       http://www.mysql.com/downloads/connector/net/