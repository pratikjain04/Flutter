import 'dart:async';

Future<bool> longWait(String prefix) async {

  for(int i = 0;i<5 ;i++ )
    {
        print('$prefix $i');
    }
    return true;
}

Future testAsync () async {


  print("Starting");
  bool ret = await longWait("Ops");        //await keyword helps to notify
                                    // to wait till the execution is completed
  print(ret);
  print("Done");

}
void testThen()
{
  print("Starting");
  longWait("New way").then((bool value) {
    print("Waiting");
  });

}

void testMultiple() async
{

  print("Starting");
  Future f1 = longWait('one');
  Future f2 = longWait('two');
  Future f3 = longWait('three');
  await Future.wait([f1,f2,f3]);
  print('done');

}
main(List<String> arguments)
{
  //testAsync();
  //testThen();
  testMultiple();
}