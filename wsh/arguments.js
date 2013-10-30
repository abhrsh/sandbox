var args = (function(){
  var ret = [];
  for (var i = 0; i < WScript.Arguments.Length; i++) {
    ret[i] = WScript.Arguments.Item(i);
  }
  return ret;
})()
