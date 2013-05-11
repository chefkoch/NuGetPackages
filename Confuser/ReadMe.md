Confuser
===

[Confuser] is a protector/obfuscator for .NET, providing great security to .NET Applications.

Features:
  - Anti debugger
  - Anti memory dumping
  - Anti decompiler
  - Prevent any tampering of the assemblies
  - Encrypt codes
  - Encrypt constants (i.e. numbers and strings)
  - Encrypt resources
  - Control flow obfuscation
  - External/Internal reference proxy
  - Renaming

Details
---
  - Current version: 1.9.0
  - Installation command: ``Install-Package Confuser``

Content
---
  - Copies ``mkvextract.exe`` during ``BeforeBuild``-targets to ``$(TargetDir)``

[Confuser]:   http://confuser.codeplex.com/