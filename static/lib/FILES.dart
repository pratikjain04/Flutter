import 'dart:io';
import 'dart:convert';

void list(String path)
{
  try {
    Directory root = new Directory(path);
    if(root.existsSync()){
      for(FileSystemEntity f in root.listSync()){
        print(f.path);
      }
    }
  }
  catch(e)
  {
    print(e.toString());

  }

}

bool writeFile(String file, String data, FileMode mode){
  try
      {
        File f = new File(file);
        RandomAccessFile rf = f.openSync(mode: mode);
        rf.writeStringSync(data);
        rf.flushSync();
        rf.closeSync();
        return true;
      }
  catch(e)
  {
  print(e.toString());
  return false;
  }
}
String readFile(String file){
  try{
    File f = new File(file);
    return f.readAsStringSync();
  }
  catch(e)
  {
    print(e.toString());
  }
}

List<String> readLines(String file) {
  try {
    File f = new File(file);
   return f.readAsLinesSync();
  }
  catch (e) {
  print(e.toString());
  }
}

bool writeJSON(String file){
  Map<String, int> map = new Map<String, int>();
  map.putIfAbsent('Pratik', () => 18);
  map.putIfAbsent('Astha', () => 12);
  
  String data = JSON.encode(map);
  return writeFile(file, data, FileMode.WRITE);
}
void readJSON(String file) {
  String data = readFile(file);
  if (data.isEmpty) {
    print('No data');
    return;
  }


  Map<String, int> people = JSON.decode(data);
  print("People Object: ");
  people.forEach((key,value) {
  print("$key is $value years old");
  });
}

main()
{
String path = '/home/pratik/Activator/';
String txtFile = '/home/pratik/Activator/test.txt';
String jsonFile = '/home/pratik/Activator/json.txt';
list(path);

if(writeFile(txtFile, "First File Handling Experience in Dart\n", FileMode.APPEND)) {
  print(readFile(txtFile));
  try {
    List<String> list = readLines(txtFile);

    print(list.length);
  }
  catch(e){
    print(e.toString());
  }
}
if(writeJSON(jsonFile))
  readJSON(jsonFile);
}