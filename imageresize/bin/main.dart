import 'package:image/image.dart';
import 'package:http/http.dart' as http;
import 'dart:io';

void download(String url, String path, String preview) {

  //GET the DATA
  var data = http.readBytes(url);

  //WRITE THE DATA TO THE DISK

  data.then((buffer) {
  File f = new File(path);
  RandomAccessFile rf = f.openSync(mode: FileMode.WRITE);
  rf.writeFromSync(buffer);
  rf.flushSync();
  rf.closeSync();

  //LOAD THE IMAGE
    Image image = decodeImage(new File(path).readAsBytesSync());
  //RESIZE THE IMAGE
    Image thumbnail = copyResize(image, 200);
  //SAVE THE THUMBNAIL TO THE DISK
    new File(preview)
      ..writeAsBytesSync(encodePng(thumbnail));

  });
}
main(List<String> arguments){
  String url = "https://flutter.io/images/intellij/hot-reload.gif";
  String path = '/home/pratik/Activator/test.gif';
  String preview = '/home/pratik/Activator/preview.png';
  download(url, path, preview);
}