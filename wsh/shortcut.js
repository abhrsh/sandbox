var args = (function(){
  var ret = [];
  for (var i = 0; i < WScript.Arguments.Length; i++) {
    ret[i] = WScript.Arguments.Item(i);
  }
  return ret;
})()

if (args.length < 2) {
  WScript.echo("usage: shortcut.js <target path> <shortcut name> <arguments>");
  WScript.quit(1);
}

var targetPath = args[0];
var shortcutPath = args[1];
var arguments = "";
for (var i = 2; i < args.length; i++) {
  arguments += args[i] + " ";
}

var sh = WScript.createObject("WScript.Shell");
var sc = sh.createShortcut(shortcutPath + ".lnk");
sc.TargetPath = "file:/" + targetPath;
sc.Arguments = arguments;
sc.save();
