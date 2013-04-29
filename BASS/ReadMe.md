BASS
===

[BASS] is an audio library for use in software on several platforms. Its purpose is to provide developers with powerful and efficient sample, stream (MP3, MP2, MP1, OGG, WAV, AIFF, custom generated, and more via OS codecs and add-ons), MOD music (XM, IT, S3M, MOD, MTM, UMX), MO3 music (MP3/OGG compressed MODs), and recording functions. All in a compact DLL that won't bloat your distribution.

Details
---
  - Current version: 2.4.10
  - Installation command: ``Install-Package BASS``

Content
---
  - Copies ``bass.dll`` during ``BeforeBuild``-targets to ``$(TargetDir)``

[BASS]:       http://www.un4seen.com/bass.html