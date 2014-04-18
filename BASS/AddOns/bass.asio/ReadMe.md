bass.asio
===

[bass.asio] is a library for use in Windows software. Its purpose is to make it simple for developers to use ASIO hardware/drivers in their productions.

The BASS library is not required by BASSASIO, but it can be used for decoding purposes, and to apply DSP/FX, etc... 

Details
---
  - Installation command: ``Install-Package bass.asio``

Content
---
  - Copies ``bassasio.dll`` during ``BeforeBuild``-targets to ``$(TargetDir)``

Changelog
---
  - v1.3.0.2
      - updated DLL, no change log available
  - v1.3.0
      - Initial package release

[bass.asio]:       http://www.un4seen.com/bass.html