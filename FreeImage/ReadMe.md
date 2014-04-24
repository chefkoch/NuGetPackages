FreeImage
===

[FreeImage] is an Open Source library project for developers who would like to support popular graphics image formats like PNG, BMP, JPEG, TIFF and others as needed by today's multimedia applications. FreeImage is easy to use, fast, multithreading safe, compatible with all 32-bit or 64-bit versions of Windows, and cross-platform (works both with Linux and Mac OS X).

Details
---
  - Installation command: ``Install-Package FreeImage``

Content
---
  - Copies ``FreeImage.dll`` during ``BeforeBuild``-targets to ``$(TargetDir)``

Changelog
---
  - v3.16.0 (2014-03-23)
      - Updated FreeImage.dll, [News](http://freeimage.sourceforge.net/news.html), [What's New](http://sourceforge.net/projects/freeimage/files/Binary%20Distribution/3.16.0/)
      - Added icon url to package
  - v3.15.4
      - Initial package release (FreeImage.dll v3.15.4)

Resources
---
[FreeImage]:  http://freeimage.sourceforge.net/
[changelog]:  http://freeimage.cvs.sourceforge.net/viewvc/freeimage/FreeImage/Whatsnew.txt
[sourcecode]: http://sourceforge.net/p/freeimage/code/
  - [ChangeLog]
  - Source code: [cvs @ SourceForge][sourcecode]