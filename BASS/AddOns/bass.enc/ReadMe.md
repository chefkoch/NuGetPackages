bass.enc
===

[bass.enc] is an extension that allows BASS channels to be encoded using command-line encoders with STDIN support ([LAME]/[OGGENC]/etc), or ACM codecs (on Windows) or CoreAudio codecs (on OSX/iOS). Also features streaming of encoded data to clients directly or via Shoutcast and Icecast servers, and PCM/WAV file writing.

Details
---
  - Installation command: ``Install-Package bass.enc``

Content
---
  - Copies ``bassenc.dll`` during ``BeforeBuild``-targets to ``$(TargetDir)``

Changelog
---
  - v2.4.10
      - Initial package release

[bass.enc]:   http://www.un4seen.com/bass.html
[LAME]:       http://www.un4seen.com/mo3.html#stuff
[OGGENC]:     http://www.un4seen.com/mo3.html#stuff