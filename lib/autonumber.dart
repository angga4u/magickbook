import 'dart:io';

void main() {
  var f = File("lib/module/__exercise/technical_test.dart");
  var lines = f.readAsLinesSync();

  lines.removeWhere((e) {
    return e.trim().startsWith("// Exercise");
  });

  var number = 1;
  for (var i = 0; i < lines.length; i++) {
    var line = lines[i];
    if (line.startsWith("    () {")) {
      lines[i] = "    // Exercise ${number}\n(){";
      number++;
    }
  }
  f.writeAsStringSync(lines.join("\n"));
}
