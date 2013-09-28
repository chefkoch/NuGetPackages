bass.aac
===

[bass.aac] is an extension based on the [FAAD2](http://www.audiocoding.com/) decoder, enabling the playback of AAC/MP4 encoded files and streams, including AAC+ Shoutcast streams. The AAC/MP4 format is supported as standard by BASS via the OS's codecs on OSX and iOS (also Windows 7 and updated Vista).

Details
---
  - Installation command: ``Install-Package bass.aac``

Content
---
  - Copies ``bass_aac.dll`` during ``BeforeBuild``-targets to ``$(TargetDir)``

Changelog
---
  - v2.4.4.4
      - updated package
  - v2.4.4.2
      - Initial package release

[bass.aac]:       http://www.un4seen.com/bass.html