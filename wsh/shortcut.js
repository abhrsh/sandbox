if (WScript.Arguments.Length < 2) {
  WScript.echo("usage: shortcut.js <target path> <shortcut name>");
  WScript.quit(1);
}

var targetPath = WScript.Arguments.Item(0);
var shortcutPath = WScript.Arguments.Item(1);

var sh = WScript.createObject("WScript.Shell");
var sc = sh.createShortcut(shortcutPath + ".lnk");
sc.TargetPath = "file:/" + targetPath;
sc.save();
