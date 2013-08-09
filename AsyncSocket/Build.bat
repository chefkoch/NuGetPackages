@ECHO OFF
"%WINDIR%\Microsoft.NET\Framework\v4.0.30319\MSBUILD.exe" Source/AsyncSocket.sln /t:Rebuild /p:Configuration=Release