import 'dart:convert';
//import 'dart:io';

String getJson(String path) {
  print('getJson: $path');
  return path;
//  new File(path)
//      .readAsString()
//      .then((fileContents) => jsonDecode(fileContents))
//      .then((jsonData) {
//    print('$jsonData');
//    return jsonData;
//  });
}
