bass.wma
===

[bass.wma] is an extension enabling the playback of WMA files and streams, and also WMA encoding and broadcasting. Requires the Windows Media Format modules, which come installed with Windows Media Player or can be installed separately ([wmfdist.exe](http://www.un4seen.com/download.php?x/wmfdist.exe)). DRM support is available for commercial users.

Details
---
  - Installation command: ``Install-Package bass.wma``

Content
---
  - Copies ``basswma.dll`` during ``BeforeBuild``-targets to ``$(TargetDir)``

Changelog
---
  - v2.4.4
      - Initial package release

[bass.wma]:       http://www.un4seen.com/bass.html