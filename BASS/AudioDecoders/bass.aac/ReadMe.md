bass.aac
===

[bass.aac] is an extension based on the [FAAD2](http://www.audiocoding.com/) decoder, enabling the playback of AAC/MP4 encoded files and streams, including AAC+ Shoutcast streams. The AAC/MP4 format is supported as standard by BASS via the OS's codecs on OSX and iOS (also Windows 7 and updated Vista).

Details
---
  - Current version: 2.4.4.2
  - Installation command: ``Install-Package bass.aac``

Content
---
  - Copies ``bass_aac.dll`` during ``BeforeBuild``-targets to ``$(TargetDir)``

[bass.aac]:       http://www.un4seen.com/bass.html